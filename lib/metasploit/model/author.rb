module Metasploit
  module Model
    # Code shared between `Mdm::Author` and `Metasploit::Framework::Author`.
    module Author
      extend ActiveSupport::Concern

      included do
        include ActiveModel::MassAssignmentSecurity
        include ActiveModel::Validations

        #
        # Mass Assignment Security
        #

        attr_accessible :name

        #
        # Validations
        #

        validates :name, :presence => true
      end

      #
      # Associations
      #

      # @!attribute [r] email_addresses
      #   Email addresses used by this author across all {#module_instances}.
      #
      #   @return [Array<Metasploit::Model::EmailAddress>]

      # @!attribute [r] module_instances
      #   Modules written by this author.
      #
      #   @return [Array<Metasploit::Model::Module::Instance>]

      #
      # Attributes
      #

      # @!attribute [rw] name
      #   Full name (First + Last name) or handle of author.
      #
      #   @return [String]
    end
  end
end