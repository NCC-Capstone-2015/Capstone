# Author: Craig Sterling
# Date: 5/29/2015
module UserInformationsHelper

  # helper method to concatenate the elements of the phone number into
  # a string
  def concatenate_phone (phone_country_code, phone_area_code,
                         phone_prefix, phone_suffix)
    phone_text = (phone_area_code + "." +
                 phone_prefix + "." + phone_suffix)
    if phone_country_code.present?
      phone_text = phone_country_code + "." + phone_text
    end
    return phone_text
  end

  # helper method to convert user.status from number stored in tables
  # to verbiage
  def convert_user_status (status)

    if status == 0
      status_description = "Enrolled"
    else
      status_description = "Alumni"
    end
  end

  # helper method to convert opt_in_values from number stored in tables
  # to true/false
  def convert_opt_in_to_true_false (opt_in_value)
    if opt_in_value == 0
      opt_in_text = false
    else
      opt_in_text = true
    end
  end

  # helper method to convert opt_in_values from number stored in tables
  # to CHECKED or ""
  def convert_opt_in_to_value_for_input_type (opt_in_value)
    if opt_in_value == 0
      opt_in_text = " "
    else
      opt_in_text = " CHECKED "
    end
  end

  # helper method to convert opt_in_values from number stored in tables
  # to in or out
  def convert_opt_in_to_words (opt_in_value)
    if opt_in_value == 0
      opt_in_text = "no"
    else
      opt_in_text = "yes"
    end
  end

  # helper method to convert phone_type from number stored in tables
  # to verbiage
  def convert_phone_type (phone_type)
    if phone_type == 0
      phone_type_text = "Home"
    elsif phone_type == 1
      phone_type_text = "Work"
    else phone_type == 2
      phone_type_text = "Mobile"
    end
  end

  # helper method to convert salary_range from number stored in tables
  # to verbiage
  def convert_salary_range (salary_range)
    if salary_range == 0
      salary_range_text = "< $ 49,000"
    elsif salary_range == 1
      salary_range_text = "$ 50,000 to $ 99,000"
    elsifsalary_range == 2
      salary_range_text = "$ 100,000 to $ 149,000"
    elsif salary_range == 3
      salary_range_text = "$ 150,000 to $ 199,000"
    else salary_range == 4
      salary_range_text = "> $ 200,000"
    end
  end

  # helper method to convert degree_type from number stored in tables
  # to verbiage
  def convert_degree_type (degree_type)
    case degree_type
      when 0
        convert_degree_type = "A.A."
      when 1
        convert_degree_type = "A.S."
      when 2
        convert_degree_type = "B.A."
      when 3
        convert_degree_type = "B.S."
      when 4
        convert_degree_type = "M.A."
      when 5
        convert_degree_type = "M.S."
      when 6
        convert_degree_type = "Ph.D."
      when 7
        convert_degree_type = "M.D."
      else
        convert_degree_type = degree_type
    end
  end

  # helper method to get phot_path if it exists,
  # otherwise get the default photo_path
  def get_photo_path (l_name, f_name)
    photo_file_name = l_name + "_" + f_name + ".png"
    photo_path_and_file_name = Rails.root.join "app", "assets", "images",
                                                              photo_file_name
    if (File.file?(photo_path_and_file_name))
      asset_name = "/assets/" + photo_file_name
    else
      asset_name = "/assets/placeholder-person.png"
    end
    return asset_name
  end

end
