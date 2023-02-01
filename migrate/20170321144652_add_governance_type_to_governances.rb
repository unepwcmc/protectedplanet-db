class AddGovernanceTypeToGovernances < ActiveRecord::Migration[4.2]
  def change
    add_column :governances, :governance_type, :string

    governances = {
      "Federal or national ministry or agency" => "A",
      "Government-delegated management" => "A",
      "Sub-national ministry or agency" => "A",
      "Collaborative governance" => "B",
      "Transboundary governance" => "B",
      "Joint governance" => "B",
      "Non-profit organisations" => "C",
      "For-profit organisations" => "C",
      "Individual landowners" => "C",
      "Indigenous peoples" => "D",
      "Local communities" => "D",
      "Not Reported" => ""
    }

    governances.each_pair { |k,v|
      governance = Governance.where(name: k).first
      governance.update_attributes(governance_type: v) if governance.present?
    }
  end
end
