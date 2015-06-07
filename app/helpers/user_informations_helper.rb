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
  def convert_user_status_to_words (status_num)

    if status_num == 0
      status_text = "Student"
    elsif status_num == 1
      status_text = "Alumni"
    end
  end

  # helper method to convert opt_in_values from number stored in tables
  # to true/false
  def convert_opt_in_to_true_false (opt_in_value_num)
    if opt_in_value_num == 0
      opt_in_boolean = false
    elsif opt_in_value_num == 1
      opt_in_boolean = true
    end
  end

  # helper method to convert opt_in_values from number stored in tables
  # to CHECKED or ""
  def convert_opt_in_to_value_for_input_type (opt_in_value_num)
    if opt_in_value_num == 0
      opt_in_value = " "
    elsif opt_in_value_num
      opt_in_value = " CHECKED "
    end
  end

  # helper method to convert opt_in_values from number stored in tables
  # to in or out
  def convert_opt_in_to_words (opt_in_value_num)
    if opt_in_value_num == 0
      opt_in_text = "no"
    elsif opt_in_value_num
      opt_in_text = "yes"
    end
  end

  # helper method to convert phone_type from number stored in tables
  # to verbiage
  def convert_phone_type (phone_type_num)
    if phone_type_num == 0
      phone_type_text = "Home"
    elsif phone_type_num == 1
      phone_type_text = "Work"
    else phone_type_num == 2
      phone_type_text = "Mobile"
    end
  end

  # helper method to convert salary_range from number stored in tables
  # to verbiage
  def convert_salary_range_to_words (salary_range_num)
    if salary_range_num == 0
      salary_range_text = "< $ 49,000"
    elsif salary_range_num == 1
      salary_range_text = "$ 50,000 to $ 99,000"
    elsif salary_range_num == 2
      salary_range_text = "$ 100,000 to $ 149,000"
    elsif salary_range_num == 3
      salary_range_text = "$ 150,000 to $ 199,000"
    else salary_range_num == 4
      salary_range_text = "> $ 200,000"
    end
  end

  # helper method to convert degree_type from number stored in tables
  # to verbiage
  def convert_degree_type (degree_type_num)
    case degree_type_num
      when 0
        convert_degree_text = "A.A."
      when 1
        convert_degree_text = "A.S."
      when 2
        convert_degree_text = "B.A."
      when 3
        convert_degree_text = "B.S."
      when 4
        convert_degree_text = "M.A."
      when 5
        convert_degree_text = "M.S."
      when 6
        convert_degree_text = "Ph.D."
      when 7
        convert_degree_text = "M.D."
      else
        convert_degree_text = degree_type
    end
  end

  # helper method to get photo_path if it exists,
  # otherwise get the default photo_path
  def get_photo_path (id_num)
    photo_file_name = "user_image_ " + id_num.to_s
    photo_path_and_file_name = Rails.root.join "app", "assets", "images",
                                                              photo_file_name
    if (File.file?(photo_path_and_file_name + ".bmp"))
      asset_name = "/assets/" + photo_file_name + ".bmp"
    elsif (File.file?(photo_path_and_file_name + ".gif"))
      asset_name = "/assets/" + photo_file_name + ".gif"
    elsif (File.file?(photo_path_and_file_name + ".jpg"))
      asset_name = "/assets/" + photo_file_name + ".jpg"
    elsif (File.file?(photo_path_and_file_name + ".jpeg"))
      asset_name = "/assets/" + photo_file_name + ".jpeg"
    elsif (File.file?(photo_path_and_file_name + ".png"))
      asset_name = "/assets/" + photo_file_name + ".png"
    elsif (File.file?(photo_path_and_file_name + ".tiff"))
      asset_name = "/assets/" + photo_file_name + ".tiff"
    else
      asset_name = "/assets/placeholder-person.png"
    end
    return asset_name
  end

end
