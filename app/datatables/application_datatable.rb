class ApplicationDatatable
  def initialize(view)
    @view = view
  end

  def as_json(_options = {})
    fetch_resource
    return data
  end
end
