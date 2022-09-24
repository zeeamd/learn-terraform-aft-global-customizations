module "config_conformance-pack" {
  source  = "cloudposse/config/aws//modules/conformance-pack"
  version = "0.16.0"

  name = "Operational-Best-Practices-for-HIPAA-Security"

  conformance_pack="https://raw.githubusercontent.com/awslabs/aws-config-rules/master/aws-config-conformance-packs/Operational-Best-Practices-for-HIPAA-Security.yaml"
  parameter_overrides = {
    AccessKeysRotatedParamMaxAccessKeyAge = "180"
  }
}
