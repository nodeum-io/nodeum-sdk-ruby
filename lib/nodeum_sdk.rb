=begin
#Nodeum API

#The Nodeum API makes it easy to tap into the digital data mesh that runs across your organisation. Make requests to our API endpoints and we’ll give you everything you need to interconnect your business workflows with your storage.  All production API requests are made to:  http://nodeumhostname/api/  The current production version of the API is v1.   **REST** The Nodeum API is a RESTful API. This means that the API is designed to allow you to get, create, update, & delete objects with the HTTP verbs GET, POST, PUT, PATCH, & DELETE.  **JSON** The Nodeum API speaks exclusively in JSON. This means that you should always set the Content-Type header to application/json to ensure that your requests are properly accepted and processed by the API.  **Authentication** All API calls require user-password authentication.   **Cross-Origin Resource Sharing** The Nodeum API supports CORS for communicating from Javascript for these endpoints. You will need to specify an Origin URI when creating your application to allow for CORS to be whitelisted for your domain.   **Pagination** Some endpoints such as File Listing return a potentially lengthy array of objects. In order to keep the response sizes manageable the API will take advantage of pagination. Pagination is a mechanism for returning a subset of the results for a request and allowing for subsequent requests to “page” through the rest of the results until the end is reached. Paginated endpoints follow a standard interface that accepts two query parameters, limit and offset, and return a payload that follows a standard form. These parameters names and their behavior are borrowed from SQL LIMIT and OFFSET keywords.  **Versioning** The Nodeum API is constantly being worked on to add features, make improvements, and fix bugs. This means that you should expect changes to be introduced and documented.   However, there are some changes or additions that are considered backwards-compatible and your applications should be flexible enough to handle them. These include:  - Adding new endpoints to the API - Adding new attributes to the response of an existing endpoint - Changing the order of attributes of responses (JSON by definition is an object of unordered key/value pairs)  **Filter parameters** When browsing a list of items, multiple filter parameters may be applied. Some operators can be added to the value as a prefix:  - `=` value is equal. Default operator, may be omitted  - `!=` value is different  - `>` greater than  - `>=` greater than or equal  - `<` lower than  - `>=` lower than or equal  - `><` included in list, items should be separated by `|`  - `!><` not included in list, items should be separated by `|`  - `~` pattern matching, may include `%` (any characters) and `_` (one character)  - `!~` pattern not matching, may include `%` (any characters) and `_` (one character)  

The version of the OpenAPI document: 2.1.0
Contact: info@nodeum.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

# Common files
require 'nodeum_sdk/api_client'
require 'nodeum_sdk/api_error'
require 'nodeum_sdk/version'
require 'nodeum_sdk/configuration'

# Models
require 'nodeum_sdk/models/active_job_status'
require 'nodeum_sdk/models/api_key'
require 'nodeum_sdk/models/api_key_collection'
require 'nodeum_sdk/models/api_key_full'
require 'nodeum_sdk/models/api_key_full_all_of'
require 'nodeum_sdk/models/api_key_scope'
require 'nodeum_sdk/models/attribute_error'
require 'nodeum_sdk/models/blank'
require 'nodeum_sdk/models/by_date_facet'
require 'nodeum_sdk/models/by_date_facet_bucket'
require 'nodeum_sdk/models/by_date_facet_bucket_all_of'
require 'nodeum_sdk/models/by_date_facet_buckets'
require 'nodeum_sdk/models/by_file_extension_facet'
require 'nodeum_sdk/models/by_file_extension_facet_all_of'
require 'nodeum_sdk/models/by_group_owner_facet'
require 'nodeum_sdk/models/by_group_owner_facet_all_of'
require 'nodeum_sdk/models/by_primary_facet'
require 'nodeum_sdk/models/by_primary_facet_all_of'
require 'nodeum_sdk/models/by_secondary_bucket'
require 'nodeum_sdk/models/by_secondary_bucket_all_of'
require 'nodeum_sdk/models/by_secondary_buckets'
require 'nodeum_sdk/models/by_secondary_facet'
require 'nodeum_sdk/models/by_secondary_type_facet'
require 'nodeum_sdk/models/by_secondary_type_facet_all_of'
require 'nodeum_sdk/models/by_size_facet'
require 'nodeum_sdk/models/by_user_owner_facet'
require 'nodeum_sdk/models/by_user_owner_facet_all_of'
require 'nodeum_sdk/models/cloud_bucket'
require 'nodeum_sdk/models/cloud_bucket_collection'
require 'nodeum_sdk/models/cloud_bucket_simple_collection'
require 'nodeum_sdk/models/cloud_connector'
require 'nodeum_sdk/models/cloud_connector_collection'
require 'nodeum_sdk/models/container'
require 'nodeum_sdk/models/container_collection'
require 'nodeum_sdk/models/container_privilege'
require 'nodeum_sdk/models/container_privilege_collection'
require 'nodeum_sdk/models/date_to_file_facets'
require 'nodeum_sdk/models/error'
require 'nodeum_sdk/models/file_facet'
require 'nodeum_sdk/models/frozen'
require 'nodeum_sdk/models/greater_than'
require 'nodeum_sdk/models/greater_than_all_of'
require 'nodeum_sdk/models/greater_than_or_equal_to'
require 'nodeum_sdk/models/import_file'
require 'nodeum_sdk/models/import_file_collection'
require 'nodeum_sdk/models/import_file_with_path'
require 'nodeum_sdk/models/invalid'
require 'nodeum_sdk/models/less_than'
require 'nodeum_sdk/models/less_than_all_of'
require 'nodeum_sdk/models/less_than_or_equal_to'
require 'nodeum_sdk/models/mount_collection'
require 'nodeum_sdk/models/mount_info'
require 'nodeum_sdk/models/mount_notification'
require 'nodeum_sdk/models/mount_status'
require 'nodeum_sdk/models/nas'
require 'nodeum_sdk/models/nas_collection'
require 'nodeum_sdk/models/nas_share'
require 'nodeum_sdk/models/nas_share_collection'
require 'nodeum_sdk/models/nodeum_file'
require 'nodeum_sdk/models/nodeum_file_collection'
require 'nodeum_sdk/models/nodeum_file_with_path'
require 'nodeum_sdk/models/nodeum_file_with_path_all_of'
require 'nodeum_sdk/models/occurrence_less_than'
require 'nodeum_sdk/models/occurrence_less_than_all_of'
require 'nodeum_sdk/models/occurrence_less_than_or_equal_to'
require 'nodeum_sdk/models/on_tapes_file'
require 'nodeum_sdk/models/on_tapes_file_collection'
require 'nodeum_sdk/models/pool'
require 'nodeum_sdk/models/pool_collection'
require 'nodeum_sdk/models/pool_up'
require 'nodeum_sdk/models/pool_up_all_of'
require 'nodeum_sdk/models/primary_scan'
require 'nodeum_sdk/models/quota_on_cache'
require 'nodeum_sdk/models/reset'
require 'nodeum_sdk/models/reset_sections'
require 'nodeum_sdk/models/size_to_date_facets'
require 'nodeum_sdk/models/system_group'
require 'nodeum_sdk/models/system_group_collection'
require 'nodeum_sdk/models/system_user'
require 'nodeum_sdk/models/system_user_collection'
require 'nodeum_sdk/models/taken'
require 'nodeum_sdk/models/taken_all_of'
require 'nodeum_sdk/models/tape'
require 'nodeum_sdk/models/tape_collection'
require 'nodeum_sdk/models/tape_drive'
require 'nodeum_sdk/models/tape_drive_all_of'
require 'nodeum_sdk/models/tape_drive_collection'
require 'nodeum_sdk/models/tape_drive_device'
require 'nodeum_sdk/models/tape_drive_device_collection'
require 'nodeum_sdk/models/tape_library'
require 'nodeum_sdk/models/tape_library_all_of'
require 'nodeum_sdk/models/tape_library_collection'
require 'nodeum_sdk/models/tape_library_device'
require 'nodeum_sdk/models/tape_library_device_collection'
require 'nodeum_sdk/models/tape_stat'
require 'nodeum_sdk/models/tape_stat_collection'
require 'nodeum_sdk/models/task'
require 'nodeum_sdk/models/task_callback'
require 'nodeum_sdk/models/task_callback_collection'
require 'nodeum_sdk/models/task_collection'
require 'nodeum_sdk/models/task_destination_collection'
require 'nodeum_sdk/models/task_destination_down'
require 'nodeum_sdk/models/task_destination_up'
require 'nodeum_sdk/models/task_execution'
require 'nodeum_sdk/models/task_execution_collection'
require 'nodeum_sdk/models/task_metadatum'
require 'nodeum_sdk/models/task_metadatum_collection'
require 'nodeum_sdk/models/task_option'
require 'nodeum_sdk/models/task_option_collection'
require 'nodeum_sdk/models/task_schedule'
require 'nodeum_sdk/models/task_schedule_collection'
require 'nodeum_sdk/models/task_source_collection'
require 'nodeum_sdk/models/task_source_down'
require 'nodeum_sdk/models/task_source_up'
require 'nodeum_sdk/models/too_long'
require 'nodeum_sdk/models/too_long_all_of'
require 'nodeum_sdk/models/too_short'
require 'nodeum_sdk/models/too_short_all_of'
require 'nodeum_sdk/models/type_to_secondary_facets'

# APIs
require 'nodeum_sdk/api/cloud_buckets_api'
require 'nodeum_sdk/api/cloud_connectors_api'
require 'nodeum_sdk/api/containers_api'
require 'nodeum_sdk/api/files_api'
require 'nodeum_sdk/api/mounts_api'
require 'nodeum_sdk/api/nas_api'
require 'nodeum_sdk/api/nas_shares_api'
require 'nodeum_sdk/api/pools_api'
require 'nodeum_sdk/api/statistics_api'
require 'nodeum_sdk/api/systems_api'
require 'nodeum_sdk/api/tape_drives_api'
require 'nodeum_sdk/api/tape_libraries_api'
require 'nodeum_sdk/api/tapes_api'
require 'nodeum_sdk/api/task_callbacks_api'
require 'nodeum_sdk/api/task_destinations_api'
require 'nodeum_sdk/api/task_executions_api'
require 'nodeum_sdk/api/task_metadata_api'
require 'nodeum_sdk/api/task_options_api'
require 'nodeum_sdk/api/task_schedules_api'
require 'nodeum_sdk/api/task_sources_api'
require 'nodeum_sdk/api/tasks_api'
require 'nodeum_sdk/api/users_api'

module Nodeum
  class << self
    # Customize default settings for the SDK using block.
    #   Nodeum.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
