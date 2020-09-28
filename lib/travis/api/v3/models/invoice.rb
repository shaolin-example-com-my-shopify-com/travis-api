module Travis::API::V3
  class Models::Invoice
    attr_reader :id, :created_at, :status, :url, :amount_due

    def initialize(attributes = {})
      @id = attributes.fetch('id')
      @created_at = attributes.fetch('created_at') && DateTime.parse(attributes.fetch('created_at'))
      @status = attributes.fetch('status')
      @url = attributes.fetch('url')
      @amount_due = attributes.fetch('amount_due')
    end
  end
end
