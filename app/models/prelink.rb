require 'savon'

class Prelink

  @client = Savon::Client.new(GlobalProperty.find_by_property("prelink_wsdl_url").property_value)
  station_id = GlobalProperty.find_by_property("prelink_station_id").property_value
  passcode = GlobalProperty.find_by_property("prelink_passcode").property_value

  @soap_header = "
  <preLinkHeader xmlns='http://www.prelink.co.za/'>
    <StationId>#{station_id}</StationId>
    <PassCode>#{passcode}</PassCode>
  </preLinkHeader>"

  def self.soap_request(soap_body)
  end

  def self.order_request(encounter, options = {})
    patient = encounter.patient

    test_codes = options[:TestCodes] || encounter.observations.map{|observation|
      "<string>#{observation.answer_string}</string>"
    }

    soap_body = "
    <OrderRequest xmlns='http://www.prelink.co.za/'>
      <dto>
        <PriorityCode>#{options[:PriorityCode] || "R"}</PriorityCode>
        <DateCollected>#{options[:DateCollected] || DateTime.now}</DateCollected>
        <DateReceived>#{options[:DateReceived] || DateTime.now}</DateReceived>
        <FolioNumber>#{options[:FolioNumber] || encounter.encounter_id}</FolioNumber>
        <PatientFirstName>#{options[:PatientFirstName] || patient.first_name}</PatientFirstName>
        <PatientLastName>#{options[:PatientLastName] || patient.given_name}</PatientLastName>
        <PatientIdNumber>#{options[:PatientIdNumber] || patient.national_id}</PatientIdNumber>
        <PatientAge>#{options[:PatientAge] || patient.age}</PatientAge>
        <PatientDateOfBirth>#{options[:PatientDateOfBirth] || patient.birthdate}</PatientDateOfBirth>
        <GenderCode>#{options[:GenderCode] || patient.gender}</GenderCode>
        <DoctorLocationCode>#{options[:DoctorLocationCode] || encounter.location_id}</DoctorLocationCode>
        <TestCodes>#{test_codes}</TestCodes>
      </dto>
    </OrderRequest>
    "

    response = @client.order_request {|soap| 
      soap.header = @soap_header
      soap.body = soap_body
    }
    response.to_hash unless response.soap_fault?
  end

  def self.test_codes
    soap_body = "<GetTestCodes xmlns='http://www.prelink.co.za/' />"
    self.soap_request(soap_body)

    response = @client.get_test_codes {|soap| 
      soap.header = @soap_header
      soap.body = soap_body
    }
    return nil if response.soap_fault?
    # This looks nasty. That's soap for you
    # First we drill down through the xml response until we get to the elements we care about
    useful_elements = response.to_hash[:get_test_codes_response][:get_test_codes_result][:diffgram][:document_element][:dynamic_list]
    # Then we end up with an array of hashes with lots of extra stuff in them
    # So we call map on that array and then on each hash we reject the stuff we are not interested in
    # We get an array of hashes with test codes and names
    array_of_hashes = useful_elements.map{|test| test.reject{|key,value| (key != :test_code) and (key != :test_name) }}
    # We make this more useful by converting it to a single hash with the test_name as key and the test_code as value
    # Google for "create hash with inject" to understand how this works
    array_of_hashes.inject({}){ |new_hash, array_hash|
      new_hash[array_hash[:test_name]]=array_hash[:test_code]
      new_hash
    }
  end

  def self.request_result(request_number)
    self.request_results [request_number]
  end

  def self.request_results(request_numbers)
    soap_body = "
      <GetRequestResults xmlns='http://www.prelink.co.za/'>
        <requestNumber>" + 
          request_numbers.map{|request_number| "<string>#{request_number}</string>"}.join + "
        </requestNumber>
      </GetRequestResults>
    "
    response = @client.get_request_results {|soap| 
      soap.header = @soap_header
      soap.body = soap_body
    }
    response.to_hash unless response.soap_fault?
  end

end

