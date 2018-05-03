# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/event_stream_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:mediaconvert)

module Aws::MediaConvert
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :mediaconvert

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::EventStreamConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Proc] :event_stream_handler
    #   When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Permanently remove a job from a queue. Once you have canceled a job,
    # you can't start it again. You can't delete a running job.
    #
    # @option params [required, String] :id
    #   The Job ID of the job to be cancelled.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job({
    #     id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CancelJob AWS API Documentation
    #
    # @overload cancel_job(params = {})
    # @param [Hash] params ({})
    def cancel_job(params = {}, options = {})
      req = build_request(:cancel_job, params)
      req.send_request(options)
    end

    # Create a new transcoding job. For information about jobs and job
    # settings, see the User Guide at
    # http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #
    # @option params [String] :client_request_token
    #   Idempotency token for CreateJob operation.**A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :job_template
    #   When you create a job, you can either specify a job template or
    #   specify the transcoding settings individually
    #
    # @option params [String] :queue
    #   Optional. When you create a job, you can specify a queue to send it
    #   to. If you don't specify, the job will go to the default queue. For
    #   more about queues, see the User Guide topic at
    #   http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html.
    #
    # @option params [String] :role
    #   Required. The IAM role you use for creating this job. For details
    #   about permissions, see the User Guide topic at the User Guide at
    #   http://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html.
    #
    # @option params [Types::JobSettings] :settings
    #   JobSettings contains all the transcode settings for a job.
    #
    # @option params [Hash<String,String>] :user_metadata
    #   User-defined metadata that you want to associate with an MediaConvert
    #   job. You specify metadata in key/value pairs.
    #
    # @return [Types::CreateJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobResponse#job #job} => Types::Job
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job({
    #     client_request_token: "__string",
    #     job_template: "__string",
    #     queue: "__string",
    #     role: "__string",
    #     settings: {
    #       ad_avail_offset: 1,
    #       avail_blanking: {
    #         avail_blanking_image: "__string",
    #       },
    #       inputs: [
    #         {
    #           audio_selector_groups: {
    #             "__string" => {
    #               audio_selector_names: ["__string"],
    #             },
    #           },
    #           audio_selectors: {
    #             "__string" => {
    #               default_selection: "DEFAULT", # accepts DEFAULT, NOT_DEFAULT
    #               external_audio_file_input: "__string",
    #               language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #               offset: 1,
    #               pids: [1],
    #               program_selection: 1,
    #               remix_settings: {
    #                 channel_mapping: {
    #                   output_channels: [
    #                     {
    #                       input_channels: [1],
    #                     },
    #                   ],
    #                 },
    #                 channels_in: 1,
    #                 channels_out: 1,
    #               },
    #               selector_type: "PID", # accepts PID, TRACK, LANGUAGE_CODE
    #               tracks: [1],
    #             },
    #           },
    #           caption_selectors: {
    #             "__string" => {
    #               language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #               source_settings: {
    #                 ancillary_source_settings: {
    #                   source_ancillary_channel_number: 1,
    #                 },
    #                 dvb_sub_source_settings: {
    #                   pid: 1,
    #                 },
    #                 embedded_source_settings: {
    #                   convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #                   source_608_channel_number: 1,
    #                   source_608_track_number: 1,
    #                 },
    #                 file_source_settings: {
    #                   convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #                   source_file: "__string",
    #                   time_delta: 1,
    #                 },
    #                 source_type: "ANCILLARY", # accepts ANCILLARY, DVB_SUB, EMBEDDED, SCC, TTML, STL, SRT, TELETEXT, NULL_SOURCE
    #                 teletext_source_settings: {
    #                   page_number: "__string",
    #                 },
    #               },
    #             },
    #           },
    #           deblock_filter: "ENABLED", # accepts ENABLED, DISABLED
    #           denoise_filter: "ENABLED", # accepts ENABLED, DISABLED
    #           file_input: "__string",
    #           filter_enable: "AUTO", # accepts AUTO, DISABLE, FORCE
    #           filter_strength: 1,
    #           input_clippings: [
    #             {
    #               end_timecode: "__string",
    #               start_timecode: "__string",
    #             },
    #           ],
    #           program_number: 1,
    #           psi_control: "IGNORE_PSI", # accepts IGNORE_PSI, USE_PSI
    #           timecode_source: "EMBEDDED", # accepts EMBEDDED, ZEROBASED, SPECIFIEDSTART
    #           video_selector: {
    #             color_space: "FOLLOW", # accepts FOLLOW, REC_601, REC_709, HDR10, HLG_2020
    #             color_space_usage: "FORCE", # accepts FORCE, FALLBACK
    #             hdr_10_metadata: {
    #               blue_primary_x: 1,
    #               blue_primary_y: 1,
    #               green_primary_x: 1,
    #               green_primary_y: 1,
    #               max_content_light_level: 1,
    #               max_frame_average_light_level: 1,
    #               max_luminance: 1,
    #               min_luminance: 1,
    #               red_primary_x: 1,
    #               red_primary_y: 1,
    #               white_point_x: 1,
    #               white_point_y: 1,
    #             },
    #             pid: 1,
    #             program_number: 1,
    #           },
    #         },
    #       ],
    #       nielsen_configuration: {
    #         breakout_code: 1,
    #         distributor_id: "__string",
    #       },
    #       output_groups: [
    #         {
    #           custom_name: "__string",
    #           name: "__string",
    #           output_group_settings: {
    #             dash_iso_group_settings: {
    #               base_url: "__string",
    #               destination: "__string",
    #               encryption: {
    #                 speke_key_provider: {
    #                   resource_id: "__string",
    #                   system_ids: ["__string"],
    #                   url: "__string",
    #                 },
    #               },
    #               fragment_length: 1,
    #               hbbtv_compliance: "HBBTV_1_5", # accepts HBBTV_1_5, NONE
    #               min_buffer_time: 1,
    #               segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #               segment_length: 1,
    #             },
    #             file_group_settings: {
    #               destination: "__string",
    #             },
    #             hls_group_settings: {
    #               ad_markers: ["ELEMENTAL"], # accepts ELEMENTAL, ELEMENTAL_SCTE35
    #               base_url: "__string",
    #               caption_language_mappings: [
    #                 {
    #                   caption_channel: 1,
    #                   language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                   language_description: "__string",
    #                 },
    #               ],
    #               caption_language_setting: "INSERT", # accepts INSERT, OMIT, NONE
    #               client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #               codec_specification: "RFC_6381", # accepts RFC_6381, RFC_4281
    #               destination: "__string",
    #               directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #               encryption: {
    #                 constant_initialization_vector: "__string",
    #                 encryption_method: "AES128", # accepts AES128, SAMPLE_AES
    #                 initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                 speke_key_provider: {
    #                   resource_id: "__string",
    #                   system_ids: ["__string"],
    #                   url: "__string",
    #                 },
    #                 static_key_provider: {
    #                   key_format: "__string",
    #                   key_format_versions: "__string",
    #                   static_key_value: "__string",
    #                   url: "__string",
    #                 },
    #                 type: "SPEKE", # accepts SPEKE, STATIC_KEY
    #               },
    #               manifest_compression: "GZIP", # accepts GZIP, NONE
    #               manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #               min_segment_length: 1,
    #               output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY
    #               program_date_time: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #               program_date_time_period: 1,
    #               segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #               segment_length: 1,
    #               segments_per_subdirectory: 1,
    #               stream_inf_resolution: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #               timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #               timed_metadata_id_3_period: 1,
    #               timestamp_delta_milliseconds: 1,
    #             },
    #             ms_smooth_group_settings: {
    #               audio_deduplication: "COMBINE_DUPLICATE_STREAMS", # accepts COMBINE_DUPLICATE_STREAMS, NONE
    #               destination: "__string",
    #               encryption: {
    #                 speke_key_provider: {
    #                   resource_id: "__string",
    #                   system_ids: ["__string"],
    #                   url: "__string",
    #                 },
    #               },
    #               fragment_length: 1,
    #               manifest_encoding: "UTF8", # accepts UTF8, UTF16
    #             },
    #             type: "HLS_GROUP_SETTINGS", # accepts HLS_GROUP_SETTINGS, DASH_ISO_GROUP_SETTINGS, FILE_GROUP_SETTINGS, MS_SMOOTH_GROUP_SETTINGS
    #           },
    #           outputs: [
    #             {
    #               audio_descriptions: [
    #                 {
    #                   audio_normalization_settings: {
    #                     algorithm: "ITU_BS_1770_1", # accepts ITU_BS_1770_1, ITU_BS_1770_2
    #                     algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO, MEASURE_ONLY
    #                     correction_gate_level: 1,
    #                     loudness_logging: "LOG", # accepts LOG, DONT_LOG
    #                     peak_calculation: "TRUE_PEAK", # accepts TRUE_PEAK, NONE
    #                     target_lkfs: 1.0,
    #                   },
    #                   audio_source_name: "__string",
    #                   audio_type: 1,
    #                   audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                   codec_settings: {
    #                     aac_settings: {
    #                       audio_description_broadcaster_mix: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #                       bitrate: 1,
    #                       codec_profile: "LC", # accepts LC, HEV1, HEV2
    #                       coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #                       rate_control_mode: "CBR", # accepts CBR, VBR
    #                       raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #                       sample_rate: 1,
    #                       specification: "MPEG2", # accepts MPEG2, MPEG4
    #                       vbr_quality: "LOW", # accepts LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH
    #                     },
    #                     ac_3_settings: {
    #                       bitrate: 1,
    #                       bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #                       coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #                       dialnorm: 1,
    #                       dynamic_range_compression_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #                       lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                       metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                       sample_rate: 1,
    #                     },
    #                     aiff_settings: {
    #                       bit_depth: 1,
    #                       channels: 1,
    #                       sample_rate: 1,
    #                     },
    #                     codec: "AAC", # accepts AAC, MP2, WAV, AIFF, AC3, EAC3, PASSTHROUGH
    #                     eac_3_settings: {
    #                       attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #                       bitrate: 1,
    #                       bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #                       coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #                       dc_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                       dialnorm: 1,
    #                       dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                       dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                       lfe_control: "LFE", # accepts LFE, NO_LFE
    #                       lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                       lo_ro_center_mix_level: 1.0,
    #                       lo_ro_surround_mix_level: 1.0,
    #                       lt_rt_center_mix_level: 1.0,
    #                       lt_rt_surround_mix_level: 1.0,
    #                       metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                       passthrough_control: "WHEN_POSSIBLE", # accepts WHEN_POSSIBLE, NO_PASSTHROUGH
    #                       phase_control: "SHIFT_90_DEGREES", # accepts SHIFT_90_DEGREES, NO_SHIFT
    #                       sample_rate: 1,
    #                       stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, LO_RO, LT_RT, DPL2
    #                       surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                       surround_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                     },
    #                     mp_2_settings: {
    #                       bitrate: 1,
    #                       channels: 1,
    #                       sample_rate: 1,
    #                     },
    #                     wav_settings: {
    #                       bit_depth: 1,
    #                       channels: 1,
    #                       sample_rate: 1,
    #                     },
    #                   },
    #                   language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                   language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                   remix_settings: {
    #                     channel_mapping: {
    #                       output_channels: [
    #                         {
    #                           input_channels: [1],
    #                         },
    #                       ],
    #                     },
    #                     channels_in: 1,
    #                     channels_out: 1,
    #                   },
    #                   stream_name: "__string",
    #                 },
    #               ],
    #               caption_descriptions: [
    #                 {
    #                   caption_selector_name: "__string",
    #                   destination_settings: {
    #                     burnin_destination_settings: {
    #                       alignment: "CENTERED", # accepts CENTERED, LEFT
    #                       background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                       background_opacity: 1,
    #                       font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                       font_opacity: 1,
    #                       font_resolution: 1,
    #                       font_size: 1,
    #                       outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                       outline_size: 1,
    #                       shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                       shadow_opacity: 1,
    #                       shadow_x_offset: 1,
    #                       shadow_y_offset: 1,
    #                       teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                       x_position: 1,
    #                       y_position: 1,
    #                     },
    #                     destination_type: "BURN_IN", # accepts BURN_IN, DVB_SUB, EMBEDDED, SCC, SRT, TELETEXT, TTML, WEBVTT
    #                     dvb_sub_destination_settings: {
    #                       alignment: "CENTERED", # accepts CENTERED, LEFT
    #                       background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                       background_opacity: 1,
    #                       font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                       font_opacity: 1,
    #                       font_resolution: 1,
    #                       font_size: 1,
    #                       outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                       outline_size: 1,
    #                       shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                       shadow_opacity: 1,
    #                       shadow_x_offset: 1,
    #                       shadow_y_offset: 1,
    #                       teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                       x_position: 1,
    #                       y_position: 1,
    #                     },
    #                     scc_destination_settings: {
    #                       framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #                     },
    #                     teletext_destination_settings: {
    #                       page_number: "__string",
    #                     },
    #                     ttml_destination_settings: {
    #                       style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #                     },
    #                   },
    #                   language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                   language_description: "__string",
    #                 },
    #               ],
    #               container_settings: {
    #                 container: "F4V", # accepts F4V, ISMV, M2TS, M3U8, MOV, MP4, MPD, MXF, RAW
    #                 f4v_settings: {
    #                   moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #                 },
    #                 m2ts_settings: {
    #                   audio_buffer_model: "DVB", # accepts DVB, ATSC
    #                   audio_frames_per_pes: 1,
    #                   audio_pids: [1],
    #                   bitrate: 1,
    #                   buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                   dvb_nit_settings: {
    #                     network_id: 1,
    #                     network_name: "__string",
    #                     nit_interval: 1,
    #                   },
    #                   dvb_sdt_settings: {
    #                     output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                     sdt_interval: 1,
    #                     service_name: "__string",
    #                     service_provider_name: "__string",
    #                   },
    #                   dvb_sub_pids: [1],
    #                   dvb_tdt_settings: {
    #                     tdt_interval: 1,
    #                   },
    #                   dvb_teletext_pid: 1,
    #                   ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                   ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                   es_rate_in_pes: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   fragment_time: 1.0,
    #                   max_pcr_interval: 1,
    #                   min_ebp_interval: 1,
    #                   nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #                   null_packet_bitrate: 1.0,
    #                   pat_interval: 1,
    #                   pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #                   pcr_pid: 1,
    #                   pmt_interval: 1,
    #                   pmt_pid: 1,
    #                   private_metadata_pid: 1,
    #                   program_number: 1,
    #                   rate_mode: "VBR", # accepts VBR, CBR
    #                   scte_35_pid: 1,
    #                   scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                   segmentation_markers: "NONE", # accepts NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY
    #                   segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                   segmentation_time: 1.0,
    #                   timed_metadata_pid: 1,
    #                   transport_stream_id: 1,
    #                   video_pid: 1,
    #                 },
    #                 m3u_8_settings: {
    #                   audio_frames_per_pes: 1,
    #                   audio_pids: [1],
    #                   nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #                   pat_interval: 1,
    #                   pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #                   pcr_pid: 1,
    #                   pmt_interval: 1,
    #                   pmt_pid: 1,
    #                   private_metadata_pid: 1,
    #                   program_number: 1,
    #                   scte_35_pid: 1,
    #                   scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                   timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                   timed_metadata_pid: 1,
    #                   transport_stream_id: 1,
    #                   video_pid: 1,
    #                 },
    #                 mov_settings: {
    #                   clap_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   mpeg_2_four_cc_control: "XDCAM", # accepts XDCAM, MPEG
    #                   padding_control: "OMNEON", # accepts OMNEON, NONE
    #                   reference: "SELF_CONTAINED", # accepts SELF_CONTAINED, EXTERNAL
    #                 },
    #                 mp_4_settings: {
    #                   cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   free_space_box: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #                   mp_4_major_brand: "__string",
    #                 },
    #               },
    #               extension: "__string",
    #               name_modifier: "__string",
    #               output_settings: {
    #                 hls_settings: {
    #                   audio_group_id: "__string",
    #                   audio_rendition_sets: "__string",
    #                   audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", # accepts ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #                   i_frame_only_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   segment_modifier: "__string",
    #                 },
    #               },
    #               preset: "__string",
    #               video_description: {
    #                 afd_signaling: "NONE", # accepts NONE, AUTO, FIXED
    #                 anti_alias: "DISABLED", # accepts DISABLED, ENABLED
    #                 codec_settings: {
    #                   codec: "FRAME_CAPTURE", # accepts FRAME_CAPTURE, H_264, H_265, MPEG2, PRORES
    #                   frame_capture_settings: {
    #                     framerate_denominator: 1,
    #                     framerate_numerator: 1,
    #                     max_captures: 1,
    #                     quality: 1,
    #                   },
    #                   h264_settings: {
    #                     adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                     bitrate: 1,
    #                     codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2
    #                     codec_profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #                     entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #                     field_encoding: "PAFF", # accepts PAFF, FORCE_FIELD
    #                     flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                     framerate_denominator: 1,
    #                     framerate_numerator: 1,
    #                     gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                     gop_closed_cadence: 1,
    #                     gop_size: 1.0,
    #                     gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                     hrd_buffer_initial_fill_percentage: 1,
    #                     hrd_buffer_size: 1,
    #                     interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                     max_bitrate: 1,
    #                     min_i_interval: 1,
    #                     number_b_frames_between_reference_frames: 1,
    #                     number_reference_frames: 1,
    #                     par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     par_denominator: 1,
    #                     par_numerator: 1,
    #                     quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                     rate_control_mode: "VBR", # accepts VBR, CBR
    #                     repeat_pps: "DISABLED", # accepts DISABLED, ENABLED
    #                     scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                     slices: 1,
    #                     slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                     softness: 1,
    #                     spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #                     telecine: "NONE", # accepts NONE, SOFT, HARD
    #                     temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                   },
    #                   h265_settings: {
    #                     adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                     alternate_transfer_function_sei: "DISABLED", # accepts DISABLED, ENABLED
    #                     bitrate: 1,
    #                     codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2
    #                     codec_profile: "MAIN_MAIN", # accepts MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH
    #                     flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                     framerate_denominator: 1,
    #                     framerate_numerator: 1,
    #                     gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                     gop_closed_cadence: 1,
    #                     gop_size: 1.0,
    #                     gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                     hrd_buffer_initial_fill_percentage: 1,
    #                     hrd_buffer_size: 1,
    #                     interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                     max_bitrate: 1,
    #                     min_i_interval: 1,
    #                     number_b_frames_between_reference_frames: 1,
    #                     number_reference_frames: 1,
    #                     par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     par_denominator: 1,
    #                     par_numerator: 1,
    #                     quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                     rate_control_mode: "VBR", # accepts VBR, CBR
    #                     sample_adaptive_offset_filter_mode: "DEFAULT", # accepts DEFAULT, ADAPTIVE, OFF
    #                     scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                     slices: 1,
    #                     slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                     spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     telecine: "NONE", # accepts NONE, SOFT, HARD
    #                     temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     temporal_ids: "DISABLED", # accepts DISABLED, ENABLED
    #                     tiles: "DISABLED", # accepts DISABLED, ENABLED
    #                     unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                   },
    #                   mpeg_2_settings: {
    #                     adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH
    #                     bitrate: 1,
    #                     codec_level: "AUTO", # accepts AUTO, LOW, MAIN, HIGH1440, HIGH
    #                     codec_profile: "MAIN", # accepts MAIN, PROFILE_422
    #                     framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                     framerate_denominator: 1,
    #                     framerate_numerator: 1,
    #                     gop_closed_cadence: 1,
    #                     gop_size: 1.0,
    #                     gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                     hrd_buffer_initial_fill_percentage: 1,
    #                     hrd_buffer_size: 1,
    #                     interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                     intra_dc_precision: "AUTO", # accepts AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11
    #                     max_bitrate: 1,
    #                     min_i_interval: 1,
    #                     number_b_frames_between_reference_frames: 1,
    #                     par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     par_denominator: 1,
    #                     par_numerator: 1,
    #                     quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #                     rate_control_mode: "VBR", # accepts VBR, CBR
    #                     scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                     slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                     softness: 1,
    #                     spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     syntax: "DEFAULT", # accepts DEFAULT, D_10
    #                     telecine: "NONE", # accepts NONE, SOFT, HARD
    #                     temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                   },
    #                   prores_settings: {
    #                     codec_profile: "APPLE_PRORES_422", # accepts APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY
    #                     framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                     framerate_denominator: 1,
    #                     framerate_numerator: 1,
    #                     interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                     par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     par_denominator: 1,
    #                     par_numerator: 1,
    #                     slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                     telecine: "NONE", # accepts NONE, HARD
    #                   },
    #                 },
    #                 color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #                 crop: {
    #                   height: 1,
    #                   width: 1,
    #                   x: 1,
    #                   y: 1,
    #                 },
    #                 drop_frame_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                 fixed_afd: 1,
    #                 height: 1,
    #                 position: {
    #                   height: 1,
    #                   width: 1,
    #                   x: 1,
    #                   y: 1,
    #                 },
    #                 respond_to_afd: "NONE", # accepts NONE, RESPOND, PASSTHROUGH
    #                 scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #                 sharpness: 1,
    #                 timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #                 video_preprocessors: {
    #                   color_corrector: {
    #                     brightness: 1,
    #                     color_space_conversion: "NONE", # accepts NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020
    #                     contrast: 1,
    #                     hdr_10_metadata: {
    #                       blue_primary_x: 1,
    #                       blue_primary_y: 1,
    #                       green_primary_x: 1,
    #                       green_primary_y: 1,
    #                       max_content_light_level: 1,
    #                       max_frame_average_light_level: 1,
    #                       max_luminance: 1,
    #                       min_luminance: 1,
    #                       red_primary_x: 1,
    #                       red_primary_y: 1,
    #                       white_point_x: 1,
    #                       white_point_y: 1,
    #                     },
    #                     hue: 1,
    #                     saturation: 1,
    #                   },
    #                   deinterlacer: {
    #                     algorithm: "INTERPOLATE", # accepts INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER
    #                     control: "FORCE_ALL_FRAMES", # accepts FORCE_ALL_FRAMES, NORMAL
    #                     mode: "DEINTERLACE", # accepts DEINTERLACE, INVERSE_TELECINE, ADAPTIVE
    #                   },
    #                   image_inserter: {
    #                     insertable_images: [
    #                       {
    #                         duration: 1,
    #                         fade_in: 1,
    #                         fade_out: 1,
    #                         height: 1,
    #                         image_inserter_input: "__string",
    #                         image_x: 1,
    #                         image_y: 1,
    #                         layer: 1,
    #                         opacity: 1,
    #                         start_time: "__string",
    #                         width: 1,
    #                       },
    #                     ],
    #                   },
    #                   noise_reducer: {
    #                     filter: "BILATERAL", # accepts BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL
    #                     filter_settings: {
    #                       strength: 1,
    #                     },
    #                     spatial_filter_settings: {
    #                       post_filter_sharpen_strength: 1,
    #                       speed: 1,
    #                       strength: 1,
    #                     },
    #                   },
    #                   timecode_burnin: {
    #                     font_size: 1,
    #                     position: "TOP_CENTER", # accepts TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
    #                     prefix: "__string",
    #                   },
    #                 },
    #                 width: 1,
    #               },
    #             },
    #           ],
    #         },
    #       ],
    #       timecode_config: {
    #         anchor: "__string",
    #         source: "EMBEDDED", # accepts EMBEDDED, ZEROBASED, SPECIFIEDSTART
    #         start: "__string",
    #         timestamp_offset: "__string",
    #       },
    #       timed_metadata_insertion: {
    #         id_3_insertions: [
    #           {
    #             id_3: "__string",
    #             timecode: "__string",
    #           },
    #         ],
    #       },
    #     },
    #     user_metadata: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job.arn #=> String
    #   resp.job.created_at #=> Time
    #   resp.job.error_code #=> Integer
    #   resp.job.error_message #=> String
    #   resp.job.id #=> String
    #   resp.job.job_template #=> String
    #   resp.job.output_group_details #=> Array
    #   resp.job.output_group_details[0].output_details #=> Array
    #   resp.job.output_group_details[0].output_details[0].duration_in_ms #=> Integer
    #   resp.job.output_group_details[0].output_details[0].video_details.height_in_px #=> Integer
    #   resp.job.output_group_details[0].output_details[0].video_details.width_in_px #=> Integer
    #   resp.job.queue #=> String
    #   resp.job.role #=> String
    #   resp.job.settings.ad_avail_offset #=> Integer
    #   resp.job.settings.avail_blanking.avail_blanking_image #=> String
    #   resp.job.settings.inputs #=> Array
    #   resp.job.settings.inputs[0].audio_selector_groups #=> Hash
    #   resp.job.settings.inputs[0].audio_selector_groups["__string"].audio_selector_names #=> Array
    #   resp.job.settings.inputs[0].audio_selector_groups["__string"].audio_selector_names[0] #=> String
    #   resp.job.settings.inputs[0].audio_selectors #=> Hash
    #   resp.job.settings.inputs[0].audio_selectors["__string"].default_selection #=> String, one of "DEFAULT", "NOT_DEFAULT"
    #   resp.job.settings.inputs[0].audio_selectors["__string"].external_audio_file_input #=> String
    #   resp.job.settings.inputs[0].audio_selectors["__string"].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job.settings.inputs[0].audio_selectors["__string"].offset #=> Integer
    #   resp.job.settings.inputs[0].audio_selectors["__string"].pids #=> Array
    #   resp.job.settings.inputs[0].audio_selectors["__string"].pids[0] #=> Integer
    #   resp.job.settings.inputs[0].audio_selectors["__string"].program_selection #=> Integer
    #   resp.job.settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.job.settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.job.settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.job.settings.inputs[0].audio_selectors["__string"].remix_settings.channels_in #=> Integer
    #   resp.job.settings.inputs[0].audio_selectors["__string"].remix_settings.channels_out #=> Integer
    #   resp.job.settings.inputs[0].audio_selectors["__string"].selector_type #=> String, one of "PID", "TRACK", "LANGUAGE_CODE"
    #   resp.job.settings.inputs[0].audio_selectors["__string"].tracks #=> Array
    #   resp.job.settings.inputs[0].audio_selectors["__string"].tracks[0] #=> Integer
    #   resp.job.settings.inputs[0].caption_selectors #=> Hash
    #   resp.job.settings.inputs[0].caption_selectors["__string"].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job.settings.inputs[0].caption_selectors["__string"].source_settings.ancillary_source_settings.source_ancillary_channel_number #=> Integer
    #   resp.job.settings.inputs[0].caption_selectors["__string"].source_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.job.settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "UPCONVERT", "DISABLED"
    #   resp.job.settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.job.settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.job.settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.convert_608_to_708 #=> String, one of "UPCONVERT", "DISABLED"
    #   resp.job.settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.source_file #=> String
    #   resp.job.settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.time_delta #=> Integer
    #   resp.job.settings.inputs[0].caption_selectors["__string"].source_settings.source_type #=> String, one of "ANCILLARY", "DVB_SUB", "EMBEDDED", "SCC", "TTML", "STL", "SRT", "TELETEXT", "NULL_SOURCE"
    #   resp.job.settings.inputs[0].caption_selectors["__string"].source_settings.teletext_source_settings.page_number #=> String
    #   resp.job.settings.inputs[0].deblock_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job.settings.inputs[0].denoise_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job.settings.inputs[0].file_input #=> String
    #   resp.job.settings.inputs[0].filter_enable #=> String, one of "AUTO", "DISABLE", "FORCE"
    #   resp.job.settings.inputs[0].filter_strength #=> Integer
    #   resp.job.settings.inputs[0].input_clippings #=> Array
    #   resp.job.settings.inputs[0].input_clippings[0].end_timecode #=> String
    #   resp.job.settings.inputs[0].input_clippings[0].start_timecode #=> String
    #   resp.job.settings.inputs[0].program_number #=> Integer
    #   resp.job.settings.inputs[0].psi_control #=> String, one of "IGNORE_PSI", "USE_PSI"
    #   resp.job.settings.inputs[0].timecode_source #=> String, one of "EMBEDDED", "ZEROBASED", "SPECIFIEDSTART"
    #   resp.job.settings.inputs[0].video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709", "HDR10", "HLG_2020"
    #   resp.job.settings.inputs[0].video_selector.color_space_usage #=> String, one of "FORCE", "FALLBACK"
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.job.settings.inputs[0].video_selector.pid #=> Integer
    #   resp.job.settings.inputs[0].video_selector.program_number #=> Integer
    #   resp.job.settings.nielsen_configuration.breakout_code #=> Integer
    #   resp.job.settings.nielsen_configuration.distributor_id #=> String
    #   resp.job.settings.output_groups #=> Array
    #   resp.job.settings.output_groups[0].custom_name #=> String
    #   resp.job.settings.output_groups[0].name #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.base_url #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.destination #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.fragment_length #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.hbbtv_compliance #=> String, one of "HBBTV_1_5", "NONE"
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.min_buffer_time #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.segment_control #=> String, one of "SINGLE_FILE", "SEGMENTED_FILES"
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.segment_length #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.file_group_settings.destination #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers #=> Array
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers[0] #=> String, one of "ELEMENTAL", "ELEMENTAL_SCTE35"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.base_url #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings #=> Array
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].caption_channel #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_description #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_setting #=> String, one of "INSERT", "OMIT", "NONE"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.client_cache #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.codec_specification #=> String, one of "RFC_6381", "RFC_4281"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.destination #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.directory_structure #=> String, one of "SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.constant_initialization_vector #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.encryption_method #=> String, one of "AES128", "SAMPLE_AES"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.initialization_vector_in_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.key_format #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.key_format_versions #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.static_key_value #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.url #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.type #=> String, one of "SPEKE", "STATIC_KEY"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.manifest_compression #=> String, one of "GZIP", "NONE"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.manifest_duration_format #=> String, one of "FLOATING_POINT", "INTEGER"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.min_segment_length #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.output_selection #=> String, one of "MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time_period #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.segment_control #=> String, one of "SINGLE_FILE", "SEGMENTED_FILES"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.segment_length #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.segments_per_subdirectory #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.stream_inf_resolution #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.timestamp_delta_milliseconds #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.audio_deduplication #=> String, one of "COMBINE_DUPLICATE_STREAMS", "NONE"
    #   resp.job.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.destination #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.job.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.fragment_length #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.manifest_encoding #=> String, one of "UTF8", "UTF16"
    #   resp.job.settings.output_groups[0].output_group_settings.type #=> String, one of "HLS_GROUP_SETTINGS", "DASH_ISO_GROUP_SETTINGS", "FILE_GROUP_SETTINGS", "MS_SMOOTH_GROUP_SETTINGS"
    #   resp.job.settings.output_groups[0].outputs #=> Array
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions #=> Array
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_BS_1770_1", "ITU_BS_1770_2"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO", "MEASURE_ONLY"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.correction_gate_level #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.loudness_logging #=> String, one of "LOG", "DONT_LOG"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.peak_calculation #=> String, one of "TRUE_PEAK", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_source_name #=> String
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_type #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.audio_description_broadcaster_mix #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.codec_profile #=> String, one of "LC", "HEV1", "HEV2"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.specification #=> String, one of "MPEG2", "MPEG4"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "LOW", "MEDIUM_LOW", "MEDIUM_HIGH", "HIGH"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.sample_rate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.bit_depth #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.channels #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.sample_rate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.codec #=> String, one of "AAC", "MP2", "WAV", "AIFF", "AC3", "EAC3", "PASSTHROUGH"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_line #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_rf #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "WHEN_POSSIBLE", "NO_PASSTHROUGH"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "SHIFT_90_DEGREES", "NO_SHIFT"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.sample_rate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "NOT_INDICATED", "LO_RO", "LT_RT", "DPL2"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.channels #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.channels #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].stream_name #=> String
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions #=> Array
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].caption_selector_name #=> String
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.background_opacity #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_opacity #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_resolution #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_size #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.outline_size #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_opacity #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_x_offset #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_y_offset #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.x_position #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.y_position #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.destination_type #=> String, one of "BURN_IN", "DVB_SUB", "EMBEDDED", "SCC", "SRT", "TELETEXT", "TTML", "WEBVTT"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.scc_destination_settings.framerate #=> String, one of "FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_29_97_DROPFRAME", "FRAMERATE_29_97_NON_DROPFRAME"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.teletext_destination_settings.page_number #=> String
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.ttml_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].language_description #=> String
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.container #=> String, one of "F4V", "ISMV", "M2TS", "M3U8", "MOV", "MP4", "MPD", "MXF", "RAW"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.f4v_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_buffer_model #=> String, one of "DVB", "ATSC"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_pids #=> Array
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_pids[0] #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.nit_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.sdt_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sub_pids #=> Array
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sub_pids[0] #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_tdt_settings.tdt_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_teletext_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.max_pcr_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.min_ebp_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pcr_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pmt_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.private_metadata_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.program_number #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.rate_mode #=> String, one of "VBR", "CBR"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.scte_35_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_markers #=> String, one of "NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP", "EBP_LEGACY"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.timed_metadata_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.video_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_pids #=> Array
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_pids[0] #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pcr_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pmt_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.private_metadata_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.program_number #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.scte_35_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.timed_metadata_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.video_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.mov_settings.clap_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.mov_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.mov_settings.mpeg_2_four_cc_control #=> String, one of "XDCAM", "MPEG"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.mov_settings.padding_control #=> String, one of "OMNEON", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.mov_settings.reference #=> String, one of "SELF_CONTAINED", "EXTERNAL"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.mp_4_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.mp_4_settings.free_space_box #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.mp_4_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.mp_4_settings.mp_4_major_brand #=> String
    #   resp.job.settings.output_groups[0].outputs[0].extension #=> String
    #   resp.job.settings.output_groups[0].outputs[0].name_modifier #=> String
    #   resp.job.settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_group_id #=> String
    #   resp.job.settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_rendition_sets #=> String
    #   resp.job.settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.job.settings.output_groups[0].outputs[0].output_settings.hls_settings.i_frame_only_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job.settings.output_groups[0].outputs[0].output_settings.hls_settings.segment_modifier #=> String
    #   resp.job.settings.output_groups[0].outputs[0].preset #=> String
    #   resp.job.settings.output_groups[0].outputs[0].video_description.afd_signaling #=> String, one of "NONE", "AUTO", "FIXED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.anti_alias #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.codec #=> String, one of "FRAME_CAPTURE", "H_264", "H_265", "MPEG2", "PRORES"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.framerate_denominator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.framerate_numerator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.max_captures #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.quality #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.codec_profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.field_encoding #=> String, one of "PAFF", "FORCE_FIELD"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_size #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.hrd_buffer_size #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.number_reference_frames #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.repeat_pps #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.slices #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.softness #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.alternate_transfer_function_sei #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1", "LEVEL_6_2"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.codec_profile #=> String, one of "MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN", "MAIN_422_10BIT_HIGH"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_size #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.hrd_buffer_size #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.number_reference_frames #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.sample_adaptive_offset_filter_mode #=> String, one of "DEFAULT", "ADAPTIVE", "OFF"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.slices #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.temporal_ids #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.tiles #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.codec_level #=> String, one of "AUTO", "LOW", "MAIN", "HIGH1440", "HIGH"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.codec_profile #=> String, one of "MAIN", "PROFILE_422"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.hrd_buffer_size #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.intra_dc_precision #=> String, one of "AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10", "INTRA_DC_PRECISION_11"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.max_bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.min_i_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_denominator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_numerator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "MULTI_PASS"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.softness #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.syntax #=> String, one of "DEFAULT", "D_10"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.codec_profile #=> String, one of "APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT", "APPLE_PRORES_422_PROXY"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_denominator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_numerator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_denominator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_numerator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.crop.height #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.crop.width #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.crop.x #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.crop.y #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.drop_frame_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.fixed_afd #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.height #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.position.height #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.position.width #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.position.x #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.position.y #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.respond_to_afd #=> String, one of "NONE", "RESPOND", "PASSTHROUGH"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.sharpness #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.brightness #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.color_space_conversion #=> String, one of "NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10", "FORCE_HLG_2020"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.contrast #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hue #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.saturation #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.algorithm #=> String, one of "INTERPOLATE", "INTERPOLATE_TICKER", "BLEND", "BLEND_TICKER"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.control #=> String, one of "FORCE_ALL_FRAMES", "NORMAL"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.mode #=> String, one of "DEINTERLACE", "INVERSE_TELECINE", "ADAPTIVE"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images #=> Array
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].duration #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].fade_in #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].fade_out #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].height #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_inserter_input #=> String
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_x #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_y #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].layer #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].opacity #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].start_time #=> String
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].width #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.filter #=> String, one of "BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE", "SPATIAL"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.filter_settings.strength #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.post_filter_sharpen_strength #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.speed #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.strength #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.font_size #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.position #=> String, one of "TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER", "BOTTOM_RIGHT"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.prefix #=> String
    #   resp.job.settings.output_groups[0].outputs[0].video_description.width #=> Integer
    #   resp.job.settings.timecode_config.anchor #=> String
    #   resp.job.settings.timecode_config.source #=> String, one of "EMBEDDED", "ZEROBASED", "SPECIFIEDSTART"
    #   resp.job.settings.timecode_config.start #=> String
    #   resp.job.settings.timecode_config.timestamp_offset #=> String
    #   resp.job.settings.timed_metadata_insertion.id_3_insertions #=> Array
    #   resp.job.settings.timed_metadata_insertion.id_3_insertions[0].id_3 #=> String
    #   resp.job.settings.timed_metadata_insertion.id_3_insertions[0].timecode #=> String
    #   resp.job.status #=> String, one of "SUBMITTED", "PROGRESSING", "COMPLETE", "CANCELED", "ERROR"
    #   resp.job.timing.finish_time #=> Time
    #   resp.job.timing.start_time #=> Time
    #   resp.job.timing.submit_time #=> Time
    #   resp.job.user_metadata #=> Hash
    #   resp.job.user_metadata["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CreateJob AWS API Documentation
    #
    # @overload create_job(params = {})
    # @param [Hash] params ({})
    def create_job(params = {}, options = {})
      req = build_request(:create_job, params)
      req.send_request(options)
    end

    # Create a new job template. For information about job templates see the
    # User Guide at
    # http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #
    # @option params [String] :category
    #   Optional. A category for the job template you are creating
    #
    # @option params [String] :description
    #   Optional. A description of the job template you are creating.
    #
    # @option params [String] :name
    #   The name of the job template you are creating.
    #
    # @option params [String] :queue
    #   Optional. The queue that jobs created from this template are assigned
    #   to. If you don't specify this, jobs will go to the default queue.
    #
    # @option params [Types::JobTemplateSettings] :settings
    #   JobTemplateSettings contains all the transcode settings saved in the
    #   template that will be applied to jobs created from it.
    #
    # @return [Types::CreateJobTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobTemplateResponse#job_template #job_template} => Types::JobTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job_template({
    #     category: "__string",
    #     description: "__string",
    #     name: "__string",
    #     queue: "__string",
    #     settings: {
    #       ad_avail_offset: 1,
    #       avail_blanking: {
    #         avail_blanking_image: "__string",
    #       },
    #       inputs: [
    #         {
    #           audio_selector_groups: {
    #             "__string" => {
    #               audio_selector_names: ["__string"],
    #             },
    #           },
    #           audio_selectors: {
    #             "__string" => {
    #               default_selection: "DEFAULT", # accepts DEFAULT, NOT_DEFAULT
    #               external_audio_file_input: "__string",
    #               language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #               offset: 1,
    #               pids: [1],
    #               program_selection: 1,
    #               remix_settings: {
    #                 channel_mapping: {
    #                   output_channels: [
    #                     {
    #                       input_channels: [1],
    #                     },
    #                   ],
    #                 },
    #                 channels_in: 1,
    #                 channels_out: 1,
    #               },
    #               selector_type: "PID", # accepts PID, TRACK, LANGUAGE_CODE
    #               tracks: [1],
    #             },
    #           },
    #           caption_selectors: {
    #             "__string" => {
    #               language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #               source_settings: {
    #                 ancillary_source_settings: {
    #                   source_ancillary_channel_number: 1,
    #                 },
    #                 dvb_sub_source_settings: {
    #                   pid: 1,
    #                 },
    #                 embedded_source_settings: {
    #                   convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #                   source_608_channel_number: 1,
    #                   source_608_track_number: 1,
    #                 },
    #                 file_source_settings: {
    #                   convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #                   source_file: "__string",
    #                   time_delta: 1,
    #                 },
    #                 source_type: "ANCILLARY", # accepts ANCILLARY, DVB_SUB, EMBEDDED, SCC, TTML, STL, SRT, TELETEXT, NULL_SOURCE
    #                 teletext_source_settings: {
    #                   page_number: "__string",
    #                 },
    #               },
    #             },
    #           },
    #           deblock_filter: "ENABLED", # accepts ENABLED, DISABLED
    #           denoise_filter: "ENABLED", # accepts ENABLED, DISABLED
    #           filter_enable: "AUTO", # accepts AUTO, DISABLE, FORCE
    #           filter_strength: 1,
    #           input_clippings: [
    #             {
    #               end_timecode: "__string",
    #               start_timecode: "__string",
    #             },
    #           ],
    #           program_number: 1,
    #           psi_control: "IGNORE_PSI", # accepts IGNORE_PSI, USE_PSI
    #           timecode_source: "EMBEDDED", # accepts EMBEDDED, ZEROBASED, SPECIFIEDSTART
    #           video_selector: {
    #             color_space: "FOLLOW", # accepts FOLLOW, REC_601, REC_709, HDR10, HLG_2020
    #             color_space_usage: "FORCE", # accepts FORCE, FALLBACK
    #             hdr_10_metadata: {
    #               blue_primary_x: 1,
    #               blue_primary_y: 1,
    #               green_primary_x: 1,
    #               green_primary_y: 1,
    #               max_content_light_level: 1,
    #               max_frame_average_light_level: 1,
    #               max_luminance: 1,
    #               min_luminance: 1,
    #               red_primary_x: 1,
    #               red_primary_y: 1,
    #               white_point_x: 1,
    #               white_point_y: 1,
    #             },
    #             pid: 1,
    #             program_number: 1,
    #           },
    #         },
    #       ],
    #       nielsen_configuration: {
    #         breakout_code: 1,
    #         distributor_id: "__string",
    #       },
    #       output_groups: [
    #         {
    #           custom_name: "__string",
    #           name: "__string",
    #           output_group_settings: {
    #             dash_iso_group_settings: {
    #               base_url: "__string",
    #               destination: "__string",
    #               encryption: {
    #                 speke_key_provider: {
    #                   resource_id: "__string",
    #                   system_ids: ["__string"],
    #                   url: "__string",
    #                 },
    #               },
    #               fragment_length: 1,
    #               hbbtv_compliance: "HBBTV_1_5", # accepts HBBTV_1_5, NONE
    #               min_buffer_time: 1,
    #               segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #               segment_length: 1,
    #             },
    #             file_group_settings: {
    #               destination: "__string",
    #             },
    #             hls_group_settings: {
    #               ad_markers: ["ELEMENTAL"], # accepts ELEMENTAL, ELEMENTAL_SCTE35
    #               base_url: "__string",
    #               caption_language_mappings: [
    #                 {
    #                   caption_channel: 1,
    #                   language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                   language_description: "__string",
    #                 },
    #               ],
    #               caption_language_setting: "INSERT", # accepts INSERT, OMIT, NONE
    #               client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #               codec_specification: "RFC_6381", # accepts RFC_6381, RFC_4281
    #               destination: "__string",
    #               directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #               encryption: {
    #                 constant_initialization_vector: "__string",
    #                 encryption_method: "AES128", # accepts AES128, SAMPLE_AES
    #                 initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                 speke_key_provider: {
    #                   resource_id: "__string",
    #                   system_ids: ["__string"],
    #                   url: "__string",
    #                 },
    #                 static_key_provider: {
    #                   key_format: "__string",
    #                   key_format_versions: "__string",
    #                   static_key_value: "__string",
    #                   url: "__string",
    #                 },
    #                 type: "SPEKE", # accepts SPEKE, STATIC_KEY
    #               },
    #               manifest_compression: "GZIP", # accepts GZIP, NONE
    #               manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #               min_segment_length: 1,
    #               output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY
    #               program_date_time: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #               program_date_time_period: 1,
    #               segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #               segment_length: 1,
    #               segments_per_subdirectory: 1,
    #               stream_inf_resolution: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #               timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #               timed_metadata_id_3_period: 1,
    #               timestamp_delta_milliseconds: 1,
    #             },
    #             ms_smooth_group_settings: {
    #               audio_deduplication: "COMBINE_DUPLICATE_STREAMS", # accepts COMBINE_DUPLICATE_STREAMS, NONE
    #               destination: "__string",
    #               encryption: {
    #                 speke_key_provider: {
    #                   resource_id: "__string",
    #                   system_ids: ["__string"],
    #                   url: "__string",
    #                 },
    #               },
    #               fragment_length: 1,
    #               manifest_encoding: "UTF8", # accepts UTF8, UTF16
    #             },
    #             type: "HLS_GROUP_SETTINGS", # accepts HLS_GROUP_SETTINGS, DASH_ISO_GROUP_SETTINGS, FILE_GROUP_SETTINGS, MS_SMOOTH_GROUP_SETTINGS
    #           },
    #           outputs: [
    #             {
    #               audio_descriptions: [
    #                 {
    #                   audio_normalization_settings: {
    #                     algorithm: "ITU_BS_1770_1", # accepts ITU_BS_1770_1, ITU_BS_1770_2
    #                     algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO, MEASURE_ONLY
    #                     correction_gate_level: 1,
    #                     loudness_logging: "LOG", # accepts LOG, DONT_LOG
    #                     peak_calculation: "TRUE_PEAK", # accepts TRUE_PEAK, NONE
    #                     target_lkfs: 1.0,
    #                   },
    #                   audio_source_name: "__string",
    #                   audio_type: 1,
    #                   audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                   codec_settings: {
    #                     aac_settings: {
    #                       audio_description_broadcaster_mix: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #                       bitrate: 1,
    #                       codec_profile: "LC", # accepts LC, HEV1, HEV2
    #                       coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #                       rate_control_mode: "CBR", # accepts CBR, VBR
    #                       raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #                       sample_rate: 1,
    #                       specification: "MPEG2", # accepts MPEG2, MPEG4
    #                       vbr_quality: "LOW", # accepts LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH
    #                     },
    #                     ac_3_settings: {
    #                       bitrate: 1,
    #                       bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #                       coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #                       dialnorm: 1,
    #                       dynamic_range_compression_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #                       lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                       metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                       sample_rate: 1,
    #                     },
    #                     aiff_settings: {
    #                       bit_depth: 1,
    #                       channels: 1,
    #                       sample_rate: 1,
    #                     },
    #                     codec: "AAC", # accepts AAC, MP2, WAV, AIFF, AC3, EAC3, PASSTHROUGH
    #                     eac_3_settings: {
    #                       attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #                       bitrate: 1,
    #                       bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #                       coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #                       dc_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                       dialnorm: 1,
    #                       dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                       dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                       lfe_control: "LFE", # accepts LFE, NO_LFE
    #                       lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                       lo_ro_center_mix_level: 1.0,
    #                       lo_ro_surround_mix_level: 1.0,
    #                       lt_rt_center_mix_level: 1.0,
    #                       lt_rt_surround_mix_level: 1.0,
    #                       metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                       passthrough_control: "WHEN_POSSIBLE", # accepts WHEN_POSSIBLE, NO_PASSTHROUGH
    #                       phase_control: "SHIFT_90_DEGREES", # accepts SHIFT_90_DEGREES, NO_SHIFT
    #                       sample_rate: 1,
    #                       stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, LO_RO, LT_RT, DPL2
    #                       surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                       surround_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                     },
    #                     mp_2_settings: {
    #                       bitrate: 1,
    #                       channels: 1,
    #                       sample_rate: 1,
    #                     },
    #                     wav_settings: {
    #                       bit_depth: 1,
    #                       channels: 1,
    #                       sample_rate: 1,
    #                     },
    #                   },
    #                   language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                   language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                   remix_settings: {
    #                     channel_mapping: {
    #                       output_channels: [
    #                         {
    #                           input_channels: [1],
    #                         },
    #                       ],
    #                     },
    #                     channels_in: 1,
    #                     channels_out: 1,
    #                   },
    #                   stream_name: "__string",
    #                 },
    #               ],
    #               caption_descriptions: [
    #                 {
    #                   caption_selector_name: "__string",
    #                   destination_settings: {
    #                     burnin_destination_settings: {
    #                       alignment: "CENTERED", # accepts CENTERED, LEFT
    #                       background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                       background_opacity: 1,
    #                       font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                       font_opacity: 1,
    #                       font_resolution: 1,
    #                       font_size: 1,
    #                       outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                       outline_size: 1,
    #                       shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                       shadow_opacity: 1,
    #                       shadow_x_offset: 1,
    #                       shadow_y_offset: 1,
    #                       teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                       x_position: 1,
    #                       y_position: 1,
    #                     },
    #                     destination_type: "BURN_IN", # accepts BURN_IN, DVB_SUB, EMBEDDED, SCC, SRT, TELETEXT, TTML, WEBVTT
    #                     dvb_sub_destination_settings: {
    #                       alignment: "CENTERED", # accepts CENTERED, LEFT
    #                       background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                       background_opacity: 1,
    #                       font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                       font_opacity: 1,
    #                       font_resolution: 1,
    #                       font_size: 1,
    #                       outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                       outline_size: 1,
    #                       shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                       shadow_opacity: 1,
    #                       shadow_x_offset: 1,
    #                       shadow_y_offset: 1,
    #                       teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                       x_position: 1,
    #                       y_position: 1,
    #                     },
    #                     scc_destination_settings: {
    #                       framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #                     },
    #                     teletext_destination_settings: {
    #                       page_number: "__string",
    #                     },
    #                     ttml_destination_settings: {
    #                       style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #                     },
    #                   },
    #                   language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                   language_description: "__string",
    #                 },
    #               ],
    #               container_settings: {
    #                 container: "F4V", # accepts F4V, ISMV, M2TS, M3U8, MOV, MP4, MPD, MXF, RAW
    #                 f4v_settings: {
    #                   moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #                 },
    #                 m2ts_settings: {
    #                   audio_buffer_model: "DVB", # accepts DVB, ATSC
    #                   audio_frames_per_pes: 1,
    #                   audio_pids: [1],
    #                   bitrate: 1,
    #                   buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                   dvb_nit_settings: {
    #                     network_id: 1,
    #                     network_name: "__string",
    #                     nit_interval: 1,
    #                   },
    #                   dvb_sdt_settings: {
    #                     output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                     sdt_interval: 1,
    #                     service_name: "__string",
    #                     service_provider_name: "__string",
    #                   },
    #                   dvb_sub_pids: [1],
    #                   dvb_tdt_settings: {
    #                     tdt_interval: 1,
    #                   },
    #                   dvb_teletext_pid: 1,
    #                   ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                   ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                   es_rate_in_pes: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   fragment_time: 1.0,
    #                   max_pcr_interval: 1,
    #                   min_ebp_interval: 1,
    #                   nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #                   null_packet_bitrate: 1.0,
    #                   pat_interval: 1,
    #                   pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #                   pcr_pid: 1,
    #                   pmt_interval: 1,
    #                   pmt_pid: 1,
    #                   private_metadata_pid: 1,
    #                   program_number: 1,
    #                   rate_mode: "VBR", # accepts VBR, CBR
    #                   scte_35_pid: 1,
    #                   scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                   segmentation_markers: "NONE", # accepts NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY
    #                   segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                   segmentation_time: 1.0,
    #                   timed_metadata_pid: 1,
    #                   transport_stream_id: 1,
    #                   video_pid: 1,
    #                 },
    #                 m3u_8_settings: {
    #                   audio_frames_per_pes: 1,
    #                   audio_pids: [1],
    #                   nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #                   pat_interval: 1,
    #                   pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #                   pcr_pid: 1,
    #                   pmt_interval: 1,
    #                   pmt_pid: 1,
    #                   private_metadata_pid: 1,
    #                   program_number: 1,
    #                   scte_35_pid: 1,
    #                   scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                   timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                   timed_metadata_pid: 1,
    #                   transport_stream_id: 1,
    #                   video_pid: 1,
    #                 },
    #                 mov_settings: {
    #                   clap_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   mpeg_2_four_cc_control: "XDCAM", # accepts XDCAM, MPEG
    #                   padding_control: "OMNEON", # accepts OMNEON, NONE
    #                   reference: "SELF_CONTAINED", # accepts SELF_CONTAINED, EXTERNAL
    #                 },
    #                 mp_4_settings: {
    #                   cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   free_space_box: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #                   mp_4_major_brand: "__string",
    #                 },
    #               },
    #               extension: "__string",
    #               name_modifier: "__string",
    #               output_settings: {
    #                 hls_settings: {
    #                   audio_group_id: "__string",
    #                   audio_rendition_sets: "__string",
    #                   audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", # accepts ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #                   i_frame_only_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   segment_modifier: "__string",
    #                 },
    #               },
    #               preset: "__string",
    #               video_description: {
    #                 afd_signaling: "NONE", # accepts NONE, AUTO, FIXED
    #                 anti_alias: "DISABLED", # accepts DISABLED, ENABLED
    #                 codec_settings: {
    #                   codec: "FRAME_CAPTURE", # accepts FRAME_CAPTURE, H_264, H_265, MPEG2, PRORES
    #                   frame_capture_settings: {
    #                     framerate_denominator: 1,
    #                     framerate_numerator: 1,
    #                     max_captures: 1,
    #                     quality: 1,
    #                   },
    #                   h264_settings: {
    #                     adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                     bitrate: 1,
    #                     codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2
    #                     codec_profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #                     entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #                     field_encoding: "PAFF", # accepts PAFF, FORCE_FIELD
    #                     flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                     framerate_denominator: 1,
    #                     framerate_numerator: 1,
    #                     gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                     gop_closed_cadence: 1,
    #                     gop_size: 1.0,
    #                     gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                     hrd_buffer_initial_fill_percentage: 1,
    #                     hrd_buffer_size: 1,
    #                     interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                     max_bitrate: 1,
    #                     min_i_interval: 1,
    #                     number_b_frames_between_reference_frames: 1,
    #                     number_reference_frames: 1,
    #                     par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     par_denominator: 1,
    #                     par_numerator: 1,
    #                     quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                     rate_control_mode: "VBR", # accepts VBR, CBR
    #                     repeat_pps: "DISABLED", # accepts DISABLED, ENABLED
    #                     scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                     slices: 1,
    #                     slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                     softness: 1,
    #                     spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #                     telecine: "NONE", # accepts NONE, SOFT, HARD
    #                     temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                   },
    #                   h265_settings: {
    #                     adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                     alternate_transfer_function_sei: "DISABLED", # accepts DISABLED, ENABLED
    #                     bitrate: 1,
    #                     codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2
    #                     codec_profile: "MAIN_MAIN", # accepts MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH
    #                     flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                     framerate_denominator: 1,
    #                     framerate_numerator: 1,
    #                     gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                     gop_closed_cadence: 1,
    #                     gop_size: 1.0,
    #                     gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                     hrd_buffer_initial_fill_percentage: 1,
    #                     hrd_buffer_size: 1,
    #                     interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                     max_bitrate: 1,
    #                     min_i_interval: 1,
    #                     number_b_frames_between_reference_frames: 1,
    #                     number_reference_frames: 1,
    #                     par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     par_denominator: 1,
    #                     par_numerator: 1,
    #                     quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                     rate_control_mode: "VBR", # accepts VBR, CBR
    #                     sample_adaptive_offset_filter_mode: "DEFAULT", # accepts DEFAULT, ADAPTIVE, OFF
    #                     scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                     slices: 1,
    #                     slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                     spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     telecine: "NONE", # accepts NONE, SOFT, HARD
    #                     temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     temporal_ids: "DISABLED", # accepts DISABLED, ENABLED
    #                     tiles: "DISABLED", # accepts DISABLED, ENABLED
    #                     unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                   },
    #                   mpeg_2_settings: {
    #                     adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH
    #                     bitrate: 1,
    #                     codec_level: "AUTO", # accepts AUTO, LOW, MAIN, HIGH1440, HIGH
    #                     codec_profile: "MAIN", # accepts MAIN, PROFILE_422
    #                     framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                     framerate_denominator: 1,
    #                     framerate_numerator: 1,
    #                     gop_closed_cadence: 1,
    #                     gop_size: 1.0,
    #                     gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                     hrd_buffer_initial_fill_percentage: 1,
    #                     hrd_buffer_size: 1,
    #                     interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                     intra_dc_precision: "AUTO", # accepts AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11
    #                     max_bitrate: 1,
    #                     min_i_interval: 1,
    #                     number_b_frames_between_reference_frames: 1,
    #                     par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     par_denominator: 1,
    #                     par_numerator: 1,
    #                     quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #                     rate_control_mode: "VBR", # accepts VBR, CBR
    #                     scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                     slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                     softness: 1,
    #                     spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     syntax: "DEFAULT", # accepts DEFAULT, D_10
    #                     telecine: "NONE", # accepts NONE, SOFT, HARD
    #                     temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                   },
    #                   prores_settings: {
    #                     codec_profile: "APPLE_PRORES_422", # accepts APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY
    #                     framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                     framerate_denominator: 1,
    #                     framerate_numerator: 1,
    #                     interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                     par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     par_denominator: 1,
    #                     par_numerator: 1,
    #                     slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                     telecine: "NONE", # accepts NONE, HARD
    #                   },
    #                 },
    #                 color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #                 crop: {
    #                   height: 1,
    #                   width: 1,
    #                   x: 1,
    #                   y: 1,
    #                 },
    #                 drop_frame_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                 fixed_afd: 1,
    #                 height: 1,
    #                 position: {
    #                   height: 1,
    #                   width: 1,
    #                   x: 1,
    #                   y: 1,
    #                 },
    #                 respond_to_afd: "NONE", # accepts NONE, RESPOND, PASSTHROUGH
    #                 scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #                 sharpness: 1,
    #                 timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #                 video_preprocessors: {
    #                   color_corrector: {
    #                     brightness: 1,
    #                     color_space_conversion: "NONE", # accepts NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020
    #                     contrast: 1,
    #                     hdr_10_metadata: {
    #                       blue_primary_x: 1,
    #                       blue_primary_y: 1,
    #                       green_primary_x: 1,
    #                       green_primary_y: 1,
    #                       max_content_light_level: 1,
    #                       max_frame_average_light_level: 1,
    #                       max_luminance: 1,
    #                       min_luminance: 1,
    #                       red_primary_x: 1,
    #                       red_primary_y: 1,
    #                       white_point_x: 1,
    #                       white_point_y: 1,
    #                     },
    #                     hue: 1,
    #                     saturation: 1,
    #                   },
    #                   deinterlacer: {
    #                     algorithm: "INTERPOLATE", # accepts INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER
    #                     control: "FORCE_ALL_FRAMES", # accepts FORCE_ALL_FRAMES, NORMAL
    #                     mode: "DEINTERLACE", # accepts DEINTERLACE, INVERSE_TELECINE, ADAPTIVE
    #                   },
    #                   image_inserter: {
    #                     insertable_images: [
    #                       {
    #                         duration: 1,
    #                         fade_in: 1,
    #                         fade_out: 1,
    #                         height: 1,
    #                         image_inserter_input: "__string",
    #                         image_x: 1,
    #                         image_y: 1,
    #                         layer: 1,
    #                         opacity: 1,
    #                         start_time: "__string",
    #                         width: 1,
    #                       },
    #                     ],
    #                   },
    #                   noise_reducer: {
    #                     filter: "BILATERAL", # accepts BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL
    #                     filter_settings: {
    #                       strength: 1,
    #                     },
    #                     spatial_filter_settings: {
    #                       post_filter_sharpen_strength: 1,
    #                       speed: 1,
    #                       strength: 1,
    #                     },
    #                   },
    #                   timecode_burnin: {
    #                     font_size: 1,
    #                     position: "TOP_CENTER", # accepts TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
    #                     prefix: "__string",
    #                   },
    #                 },
    #                 width: 1,
    #               },
    #             },
    #           ],
    #         },
    #       ],
    #       timecode_config: {
    #         anchor: "__string",
    #         source: "EMBEDDED", # accepts EMBEDDED, ZEROBASED, SPECIFIEDSTART
    #         start: "__string",
    #         timestamp_offset: "__string",
    #       },
    #       timed_metadata_insertion: {
    #         id_3_insertions: [
    #           {
    #             id_3: "__string",
    #             timecode: "__string",
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_template.arn #=> String
    #   resp.job_template.category #=> String
    #   resp.job_template.created_at #=> Time
    #   resp.job_template.description #=> String
    #   resp.job_template.last_updated #=> Time
    #   resp.job_template.name #=> String
    #   resp.job_template.queue #=> String
    #   resp.job_template.settings.ad_avail_offset #=> Integer
    #   resp.job_template.settings.avail_blanking.avail_blanking_image #=> String
    #   resp.job_template.settings.inputs #=> Array
    #   resp.job_template.settings.inputs[0].audio_selector_groups #=> Hash
    #   resp.job_template.settings.inputs[0].audio_selector_groups["__string"].audio_selector_names #=> Array
    #   resp.job_template.settings.inputs[0].audio_selector_groups["__string"].audio_selector_names[0] #=> String
    #   resp.job_template.settings.inputs[0].audio_selectors #=> Hash
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].default_selection #=> String, one of "DEFAULT", "NOT_DEFAULT"
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].external_audio_file_input #=> String
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].offset #=> Integer
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].pids #=> Array
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].pids[0] #=> Integer
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].program_selection #=> Integer
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].remix_settings.channels_in #=> Integer
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].remix_settings.channels_out #=> Integer
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].selector_type #=> String, one of "PID", "TRACK", "LANGUAGE_CODE"
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].tracks #=> Array
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].tracks[0] #=> Integer
    #   resp.job_template.settings.inputs[0].caption_selectors #=> Hash
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.ancillary_source_settings.source_ancillary_channel_number #=> Integer
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "UPCONVERT", "DISABLED"
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.convert_608_to_708 #=> String, one of "UPCONVERT", "DISABLED"
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.source_file #=> String
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.time_delta #=> Integer
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.source_type #=> String, one of "ANCILLARY", "DVB_SUB", "EMBEDDED", "SCC", "TTML", "STL", "SRT", "TELETEXT", "NULL_SOURCE"
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.teletext_source_settings.page_number #=> String
    #   resp.job_template.settings.inputs[0].deblock_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_template.settings.inputs[0].denoise_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_template.settings.inputs[0].filter_enable #=> String, one of "AUTO", "DISABLE", "FORCE"
    #   resp.job_template.settings.inputs[0].filter_strength #=> Integer
    #   resp.job_template.settings.inputs[0].input_clippings #=> Array
    #   resp.job_template.settings.inputs[0].input_clippings[0].end_timecode #=> String
    #   resp.job_template.settings.inputs[0].input_clippings[0].start_timecode #=> String
    #   resp.job_template.settings.inputs[0].program_number #=> Integer
    #   resp.job_template.settings.inputs[0].psi_control #=> String, one of "IGNORE_PSI", "USE_PSI"
    #   resp.job_template.settings.inputs[0].timecode_source #=> String, one of "EMBEDDED", "ZEROBASED", "SPECIFIEDSTART"
    #   resp.job_template.settings.inputs[0].video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709", "HDR10", "HLG_2020"
    #   resp.job_template.settings.inputs[0].video_selector.color_space_usage #=> String, one of "FORCE", "FALLBACK"
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.pid #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.program_number #=> Integer
    #   resp.job_template.settings.nielsen_configuration.breakout_code #=> Integer
    #   resp.job_template.settings.nielsen_configuration.distributor_id #=> String
    #   resp.job_template.settings.output_groups #=> Array
    #   resp.job_template.settings.output_groups[0].custom_name #=> String
    #   resp.job_template.settings.output_groups[0].name #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.base_url #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.destination #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.fragment_length #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.hbbtv_compliance #=> String, one of "HBBTV_1_5", "NONE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.min_buffer_time #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.segment_control #=> String, one of "SINGLE_FILE", "SEGMENTED_FILES"
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.segment_length #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.file_group_settings.destination #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers #=> Array
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers[0] #=> String, one of "ELEMENTAL", "ELEMENTAL_SCTE35"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.base_url #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings #=> Array
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].caption_channel #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_description #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_setting #=> String, one of "INSERT", "OMIT", "NONE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.client_cache #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.codec_specification #=> String, one of "RFC_6381", "RFC_4281"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.destination #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.directory_structure #=> String, one of "SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.constant_initialization_vector #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.encryption_method #=> String, one of "AES128", "SAMPLE_AES"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.initialization_vector_in_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.key_format #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.key_format_versions #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.static_key_value #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.url #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.type #=> String, one of "SPEKE", "STATIC_KEY"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.manifest_compression #=> String, one of "GZIP", "NONE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.manifest_duration_format #=> String, one of "FLOATING_POINT", "INTEGER"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.min_segment_length #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.output_selection #=> String, one of "MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time_period #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.segment_control #=> String, one of "SINGLE_FILE", "SEGMENTED_FILES"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.segment_length #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.segments_per_subdirectory #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.stream_inf_resolution #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.timestamp_delta_milliseconds #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.audio_deduplication #=> String, one of "COMBINE_DUPLICATE_STREAMS", "NONE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.destination #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.fragment_length #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.manifest_encoding #=> String, one of "UTF8", "UTF16"
    #   resp.job_template.settings.output_groups[0].output_group_settings.type #=> String, one of "HLS_GROUP_SETTINGS", "DASH_ISO_GROUP_SETTINGS", "FILE_GROUP_SETTINGS", "MS_SMOOTH_GROUP_SETTINGS"
    #   resp.job_template.settings.output_groups[0].outputs #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_BS_1770_1", "ITU_BS_1770_2"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO", "MEASURE_ONLY"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.correction_gate_level #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.loudness_logging #=> String, one of "LOG", "DONT_LOG"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.peak_calculation #=> String, one of "TRUE_PEAK", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_source_name #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_type #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.audio_description_broadcaster_mix #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.codec_profile #=> String, one of "LC", "HEV1", "HEV2"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.specification #=> String, one of "MPEG2", "MPEG4"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "LOW", "MEDIUM_LOW", "MEDIUM_HIGH", "HIGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.sample_rate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.bit_depth #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.channels #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.sample_rate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.codec #=> String, one of "AAC", "MP2", "WAV", "AIFF", "AC3", "EAC3", "PASSTHROUGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_line #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_rf #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "WHEN_POSSIBLE", "NO_PASSTHROUGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "SHIFT_90_DEGREES", "NO_SHIFT"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.sample_rate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "NOT_INDICATED", "LO_RO", "LT_RT", "DPL2"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.channels #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.channels #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].stream_name #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].caption_selector_name #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.background_opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_resolution #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.outline_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_x_offset #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_y_offset #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.x_position #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.y_position #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.destination_type #=> String, one of "BURN_IN", "DVB_SUB", "EMBEDDED", "SCC", "SRT", "TELETEXT", "TTML", "WEBVTT"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.scc_destination_settings.framerate #=> String, one of "FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_29_97_DROPFRAME", "FRAMERATE_29_97_NON_DROPFRAME"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.teletext_destination_settings.page_number #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.ttml_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].language_description #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.container #=> String, one of "F4V", "ISMV", "M2TS", "M3U8", "MOV", "MP4", "MPD", "MXF", "RAW"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.f4v_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_buffer_model #=> String, one of "DVB", "ATSC"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_pids #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_pids[0] #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.nit_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.sdt_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sub_pids #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sub_pids[0] #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_tdt_settings.tdt_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_teletext_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.max_pcr_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.min_ebp_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pcr_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pmt_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.private_metadata_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.program_number #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.rate_mode #=> String, one of "VBR", "CBR"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.scte_35_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_markers #=> String, one of "NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP", "EBP_LEGACY"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.timed_metadata_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.video_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_pids #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_pids[0] #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pcr_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pmt_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.private_metadata_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.program_number #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.scte_35_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.timed_metadata_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.video_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mov_settings.clap_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mov_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mov_settings.mpeg_2_four_cc_control #=> String, one of "XDCAM", "MPEG"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mov_settings.padding_control #=> String, one of "OMNEON", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mov_settings.reference #=> String, one of "SELF_CONTAINED", "EXTERNAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mp_4_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mp_4_settings.free_space_box #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mp_4_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mp_4_settings.mp_4_major_brand #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].extension #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].name_modifier #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_group_id #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_rendition_sets #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.job_template.settings.output_groups[0].outputs[0].output_settings.hls_settings.i_frame_only_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].outputs[0].output_settings.hls_settings.segment_modifier #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].preset #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.afd_signaling #=> String, one of "NONE", "AUTO", "FIXED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.anti_alias #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.codec #=> String, one of "FRAME_CAPTURE", "H_264", "H_265", "MPEG2", "PRORES"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.framerate_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.framerate_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.max_captures #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.quality #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.codec_profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.field_encoding #=> String, one of "PAFF", "FORCE_FIELD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_size #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.hrd_buffer_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.number_reference_frames #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.repeat_pps #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.slices #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.softness #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.alternate_transfer_function_sei #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1", "LEVEL_6_2"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.codec_profile #=> String, one of "MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN", "MAIN_422_10BIT_HIGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_size #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.hrd_buffer_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.number_reference_frames #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.sample_adaptive_offset_filter_mode #=> String, one of "DEFAULT", "ADAPTIVE", "OFF"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.slices #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.temporal_ids #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.tiles #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.codec_level #=> String, one of "AUTO", "LOW", "MAIN", "HIGH1440", "HIGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.codec_profile #=> String, one of "MAIN", "PROFILE_422"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.hrd_buffer_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.intra_dc_precision #=> String, one of "AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10", "INTRA_DC_PRECISION_11"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.max_bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.min_i_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "MULTI_PASS"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.softness #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.syntax #=> String, one of "DEFAULT", "D_10"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.codec_profile #=> String, one of "APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT", "APPLE_PRORES_422_PROXY"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.crop.height #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.crop.width #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.crop.x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.crop.y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.drop_frame_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.fixed_afd #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.height #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.position.height #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.position.width #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.position.x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.position.y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.respond_to_afd #=> String, one of "NONE", "RESPOND", "PASSTHROUGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.sharpness #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.brightness #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.color_space_conversion #=> String, one of "NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10", "FORCE_HLG_2020"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.contrast #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hue #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.saturation #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.algorithm #=> String, one of "INTERPOLATE", "INTERPOLATE_TICKER", "BLEND", "BLEND_TICKER"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.control #=> String, one of "FORCE_ALL_FRAMES", "NORMAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.mode #=> String, one of "DEINTERLACE", "INVERSE_TELECINE", "ADAPTIVE"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].duration #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].fade_in #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].fade_out #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].height #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_inserter_input #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].layer #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].start_time #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].width #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.filter #=> String, one of "BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE", "SPATIAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.filter_settings.strength #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.post_filter_sharpen_strength #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.speed #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.strength #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.font_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.position #=> String, one of "TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER", "BOTTOM_RIGHT"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.prefix #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.width #=> Integer
    #   resp.job_template.settings.timecode_config.anchor #=> String
    #   resp.job_template.settings.timecode_config.source #=> String, one of "EMBEDDED", "ZEROBASED", "SPECIFIEDSTART"
    #   resp.job_template.settings.timecode_config.start #=> String
    #   resp.job_template.settings.timecode_config.timestamp_offset #=> String
    #   resp.job_template.settings.timed_metadata_insertion.id_3_insertions #=> Array
    #   resp.job_template.settings.timed_metadata_insertion.id_3_insertions[0].id_3 #=> String
    #   resp.job_template.settings.timed_metadata_insertion.id_3_insertions[0].timecode #=> String
    #   resp.job_template.type #=> String, one of "SYSTEM", "CUSTOM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CreateJobTemplate AWS API Documentation
    #
    # @overload create_job_template(params = {})
    # @param [Hash] params ({})
    def create_job_template(params = {}, options = {})
      req = build_request(:create_job_template, params)
      req.send_request(options)
    end

    # Create a new preset. For information about job templates see the User
    # Guide at
    # http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #
    # @option params [String] :category
    #   Optional. A category for the preset you are creating.
    #
    # @option params [String] :description
    #   Optional. A description of the preset you are creating.
    #
    # @option params [String] :name
    #   The name of the preset you are creating.
    #
    # @option params [Types::PresetSettings] :settings
    #   Settings for preset
    #
    # @return [Types::CreatePresetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePresetResponse#preset #preset} => Types::Preset
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_preset({
    #     category: "__string",
    #     description: "__string",
    #     name: "__string",
    #     settings: {
    #       audio_descriptions: [
    #         {
    #           audio_normalization_settings: {
    #             algorithm: "ITU_BS_1770_1", # accepts ITU_BS_1770_1, ITU_BS_1770_2
    #             algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO, MEASURE_ONLY
    #             correction_gate_level: 1,
    #             loudness_logging: "LOG", # accepts LOG, DONT_LOG
    #             peak_calculation: "TRUE_PEAK", # accepts TRUE_PEAK, NONE
    #             target_lkfs: 1.0,
    #           },
    #           audio_source_name: "__string",
    #           audio_type: 1,
    #           audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #           codec_settings: {
    #             aac_settings: {
    #               audio_description_broadcaster_mix: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #               bitrate: 1,
    #               codec_profile: "LC", # accepts LC, HEV1, HEV2
    #               coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #               rate_control_mode: "CBR", # accepts CBR, VBR
    #               raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #               sample_rate: 1,
    #               specification: "MPEG2", # accepts MPEG2, MPEG4
    #               vbr_quality: "LOW", # accepts LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH
    #             },
    #             ac_3_settings: {
    #               bitrate: 1,
    #               bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #               dialnorm: 1,
    #               dynamic_range_compression_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #               lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #               metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               sample_rate: 1,
    #             },
    #             aiff_settings: {
    #               bit_depth: 1,
    #               channels: 1,
    #               sample_rate: 1,
    #             },
    #             codec: "AAC", # accepts AAC, MP2, WAV, AIFF, AC3, EAC3, PASSTHROUGH
    #             eac_3_settings: {
    #               attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #               bitrate: 1,
    #               bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #               dc_filter: "ENABLED", # accepts ENABLED, DISABLED
    #               dialnorm: 1,
    #               dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #               dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #               lfe_control: "LFE", # accepts LFE, NO_LFE
    #               lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #               lo_ro_center_mix_level: 1.0,
    #               lo_ro_surround_mix_level: 1.0,
    #               lt_rt_center_mix_level: 1.0,
    #               lt_rt_surround_mix_level: 1.0,
    #               metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               passthrough_control: "WHEN_POSSIBLE", # accepts WHEN_POSSIBLE, NO_PASSTHROUGH
    #               phase_control: "SHIFT_90_DEGREES", # accepts SHIFT_90_DEGREES, NO_SHIFT
    #               sample_rate: 1,
    #               stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, LO_RO, LT_RT, DPL2
    #               surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #               surround_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #             },
    #             mp_2_settings: {
    #               bitrate: 1,
    #               channels: 1,
    #               sample_rate: 1,
    #             },
    #             wav_settings: {
    #               bit_depth: 1,
    #               channels: 1,
    #               sample_rate: 1,
    #             },
    #           },
    #           language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #           language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #           remix_settings: {
    #             channel_mapping: {
    #               output_channels: [
    #                 {
    #                   input_channels: [1],
    #                 },
    #               ],
    #             },
    #             channels_in: 1,
    #             channels_out: 1,
    #           },
    #           stream_name: "__string",
    #         },
    #       ],
    #       caption_descriptions: [
    #         {
    #           destination_settings: {
    #             burnin_destination_settings: {
    #               alignment: "CENTERED", # accepts CENTERED, LEFT
    #               background_color: "NONE", # accepts NONE, BLACK, WHITE
    #               background_opacity: 1,
    #               font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #               font_opacity: 1,
    #               font_resolution: 1,
    #               font_size: 1,
    #               outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #               outline_size: 1,
    #               shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #               shadow_opacity: 1,
    #               shadow_x_offset: 1,
    #               shadow_y_offset: 1,
    #               teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #               x_position: 1,
    #               y_position: 1,
    #             },
    #             destination_type: "BURN_IN", # accepts BURN_IN, DVB_SUB, EMBEDDED, SCC, SRT, TELETEXT, TTML, WEBVTT
    #             dvb_sub_destination_settings: {
    #               alignment: "CENTERED", # accepts CENTERED, LEFT
    #               background_color: "NONE", # accepts NONE, BLACK, WHITE
    #               background_opacity: 1,
    #               font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #               font_opacity: 1,
    #               font_resolution: 1,
    #               font_size: 1,
    #               outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #               outline_size: 1,
    #               shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #               shadow_opacity: 1,
    #               shadow_x_offset: 1,
    #               shadow_y_offset: 1,
    #               teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #               x_position: 1,
    #               y_position: 1,
    #             },
    #             scc_destination_settings: {
    #               framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #             },
    #             teletext_destination_settings: {
    #               page_number: "__string",
    #             },
    #             ttml_destination_settings: {
    #               style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #             },
    #           },
    #           language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #           language_description: "__string",
    #         },
    #       ],
    #       container_settings: {
    #         container: "F4V", # accepts F4V, ISMV, M2TS, M3U8, MOV, MP4, MPD, MXF, RAW
    #         f4v_settings: {
    #           moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #         },
    #         m2ts_settings: {
    #           audio_buffer_model: "DVB", # accepts DVB, ATSC
    #           audio_frames_per_pes: 1,
    #           audio_pids: [1],
    #           bitrate: 1,
    #           buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #           dvb_nit_settings: {
    #             network_id: 1,
    #             network_name: "__string",
    #             nit_interval: 1,
    #           },
    #           dvb_sdt_settings: {
    #             output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #             sdt_interval: 1,
    #             service_name: "__string",
    #             service_provider_name: "__string",
    #           },
    #           dvb_sub_pids: [1],
    #           dvb_tdt_settings: {
    #             tdt_interval: 1,
    #           },
    #           dvb_teletext_pid: 1,
    #           ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #           ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #           es_rate_in_pes: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           fragment_time: 1.0,
    #           max_pcr_interval: 1,
    #           min_ebp_interval: 1,
    #           nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #           null_packet_bitrate: 1.0,
    #           pat_interval: 1,
    #           pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #           pcr_pid: 1,
    #           pmt_interval: 1,
    #           pmt_pid: 1,
    #           private_metadata_pid: 1,
    #           program_number: 1,
    #           rate_mode: "VBR", # accepts VBR, CBR
    #           scte_35_pid: 1,
    #           scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           segmentation_markers: "NONE", # accepts NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY
    #           segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #           segmentation_time: 1.0,
    #           timed_metadata_pid: 1,
    #           transport_stream_id: 1,
    #           video_pid: 1,
    #         },
    #         m3u_8_settings: {
    #           audio_frames_per_pes: 1,
    #           audio_pids: [1],
    #           nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #           pat_interval: 1,
    #           pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #           pcr_pid: 1,
    #           pmt_interval: 1,
    #           pmt_pid: 1,
    #           private_metadata_pid: 1,
    #           program_number: 1,
    #           scte_35_pid: 1,
    #           scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           timed_metadata_pid: 1,
    #           transport_stream_id: 1,
    #           video_pid: 1,
    #         },
    #         mov_settings: {
    #           clap_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           mpeg_2_four_cc_control: "XDCAM", # accepts XDCAM, MPEG
    #           padding_control: "OMNEON", # accepts OMNEON, NONE
    #           reference: "SELF_CONTAINED", # accepts SELF_CONTAINED, EXTERNAL
    #         },
    #         mp_4_settings: {
    #           cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           free_space_box: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #           mp_4_major_brand: "__string",
    #         },
    #       },
    #       video_description: {
    #         afd_signaling: "NONE", # accepts NONE, AUTO, FIXED
    #         anti_alias: "DISABLED", # accepts DISABLED, ENABLED
    #         codec_settings: {
    #           codec: "FRAME_CAPTURE", # accepts FRAME_CAPTURE, H_264, H_265, MPEG2, PRORES
    #           frame_capture_settings: {
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             max_captures: 1,
    #             quality: 1,
    #           },
    #           h264_settings: {
    #             adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #             bitrate: 1,
    #             codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2
    #             codec_profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #             entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #             field_encoding: "PAFF", # accepts PAFF, FORCE_FIELD
    #             flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #             gop_closed_cadence: 1,
    #             gop_size: 1.0,
    #             gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #             hrd_buffer_initial_fill_percentage: 1,
    #             hrd_buffer_size: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             max_bitrate: 1,
    #             min_i_interval: 1,
    #             number_b_frames_between_reference_frames: 1,
    #             number_reference_frames: 1,
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #             rate_control_mode: "VBR", # accepts VBR, CBR
    #             repeat_pps: "DISABLED", # accepts DISABLED, ENABLED
    #             scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #             slices: 1,
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             softness: 1,
    #             spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #             telecine: "NONE", # accepts NONE, SOFT, HARD
    #             temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           h265_settings: {
    #             adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #             alternate_transfer_function_sei: "DISABLED", # accepts DISABLED, ENABLED
    #             bitrate: 1,
    #             codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2
    #             codec_profile: "MAIN_MAIN", # accepts MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH
    #             flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #             gop_closed_cadence: 1,
    #             gop_size: 1.0,
    #             gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #             hrd_buffer_initial_fill_percentage: 1,
    #             hrd_buffer_size: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             max_bitrate: 1,
    #             min_i_interval: 1,
    #             number_b_frames_between_reference_frames: 1,
    #             number_reference_frames: 1,
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #             rate_control_mode: "VBR", # accepts VBR, CBR
    #             sample_adaptive_offset_filter_mode: "DEFAULT", # accepts DEFAULT, ADAPTIVE, OFF
    #             scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #             slices: 1,
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             telecine: "NONE", # accepts NONE, SOFT, HARD
    #             temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             temporal_ids: "DISABLED", # accepts DISABLED, ENABLED
    #             tiles: "DISABLED", # accepts DISABLED, ENABLED
    #             unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           mpeg_2_settings: {
    #             adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH
    #             bitrate: 1,
    #             codec_level: "AUTO", # accepts AUTO, LOW, MAIN, HIGH1440, HIGH
    #             codec_profile: "MAIN", # accepts MAIN, PROFILE_422
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_closed_cadence: 1,
    #             gop_size: 1.0,
    #             gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #             hrd_buffer_initial_fill_percentage: 1,
    #             hrd_buffer_size: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             intra_dc_precision: "AUTO", # accepts AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11
    #             max_bitrate: 1,
    #             min_i_interval: 1,
    #             number_b_frames_between_reference_frames: 1,
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #             rate_control_mode: "VBR", # accepts VBR, CBR
    #             scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             softness: 1,
    #             spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             syntax: "DEFAULT", # accepts DEFAULT, D_10
    #             telecine: "NONE", # accepts NONE, SOFT, HARD
    #             temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           prores_settings: {
    #             codec_profile: "APPLE_PRORES_422", # accepts APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             telecine: "NONE", # accepts NONE, HARD
    #           },
    #         },
    #         color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #         crop: {
    #           height: 1,
    #           width: 1,
    #           x: 1,
    #           y: 1,
    #         },
    #         drop_frame_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #         fixed_afd: 1,
    #         height: 1,
    #         position: {
    #           height: 1,
    #           width: 1,
    #           x: 1,
    #           y: 1,
    #         },
    #         respond_to_afd: "NONE", # accepts NONE, RESPOND, PASSTHROUGH
    #         scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #         sharpness: 1,
    #         timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #         video_preprocessors: {
    #           color_corrector: {
    #             brightness: 1,
    #             color_space_conversion: "NONE", # accepts NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020
    #             contrast: 1,
    #             hdr_10_metadata: {
    #               blue_primary_x: 1,
    #               blue_primary_y: 1,
    #               green_primary_x: 1,
    #               green_primary_y: 1,
    #               max_content_light_level: 1,
    #               max_frame_average_light_level: 1,
    #               max_luminance: 1,
    #               min_luminance: 1,
    #               red_primary_x: 1,
    #               red_primary_y: 1,
    #               white_point_x: 1,
    #               white_point_y: 1,
    #             },
    #             hue: 1,
    #             saturation: 1,
    #           },
    #           deinterlacer: {
    #             algorithm: "INTERPOLATE", # accepts INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER
    #             control: "FORCE_ALL_FRAMES", # accepts FORCE_ALL_FRAMES, NORMAL
    #             mode: "DEINTERLACE", # accepts DEINTERLACE, INVERSE_TELECINE, ADAPTIVE
    #           },
    #           image_inserter: {
    #             insertable_images: [
    #               {
    #                 duration: 1,
    #                 fade_in: 1,
    #                 fade_out: 1,
    #                 height: 1,
    #                 image_inserter_input: "__string",
    #                 image_x: 1,
    #                 image_y: 1,
    #                 layer: 1,
    #                 opacity: 1,
    #                 start_time: "__string",
    #                 width: 1,
    #               },
    #             ],
    #           },
    #           noise_reducer: {
    #             filter: "BILATERAL", # accepts BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL
    #             filter_settings: {
    #               strength: 1,
    #             },
    #             spatial_filter_settings: {
    #               post_filter_sharpen_strength: 1,
    #               speed: 1,
    #               strength: 1,
    #             },
    #           },
    #           timecode_burnin: {
    #             font_size: 1,
    #             position: "TOP_CENTER", # accepts TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
    #             prefix: "__string",
    #           },
    #         },
    #         width: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.preset.arn #=> String
    #   resp.preset.category #=> String
    #   resp.preset.created_at #=> Time
    #   resp.preset.description #=> String
    #   resp.preset.last_updated #=> Time
    #   resp.preset.name #=> String
    #   resp.preset.settings.audio_descriptions #=> Array
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_BS_1770_1", "ITU_BS_1770_2"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO", "MEASURE_ONLY"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.correction_gate_level #=> Integer
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.loudness_logging #=> String, one of "LOG", "DONT_LOG"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.peak_calculation #=> String, one of "TRUE_PEAK", "NONE"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.preset.settings.audio_descriptions[0].audio_source_name #=> String
    #   resp.preset.settings.audio_descriptions[0].audio_type #=> Integer
    #   resp.preset.settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.audio_description_broadcaster_mix #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.codec_profile #=> String, one of "LC", "HEV1", "HEV2"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.specification #=> String, one of "MPEG2", "MPEG4"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "LOW", "MEDIUM_LOW", "MEDIUM_HIGH", "HIGH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aiff_settings.bit_depth #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aiff_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aiff_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.codec #=> String, one of "AAC", "MP2", "WAV", "AIFF", "AC3", "EAC3", "PASSTHROUGH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_line #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_rf #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "WHEN_POSSIBLE", "NO_PASSTHROUGH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "SHIFT_90_DEGREES", "NO_SHIFT"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "NOT_INDICATED", "LO_RO", "LT_RT", "DPL2"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_2_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.preset.settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.preset.settings.audio_descriptions[0].stream_name #=> String
    #   resp.preset.settings.caption_descriptions #=> Array
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.background_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_resolution #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.outline_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_x_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_y_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.x_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.y_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.destination_type #=> String, one of "BURN_IN", "DVB_SUB", "EMBEDDED", "SCC", "SRT", "TELETEXT", "TTML", "WEBVTT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.scc_destination_settings.framerate #=> String, one of "FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_29_97_DROPFRAME", "FRAMERATE_29_97_NON_DROPFRAME"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.teletext_destination_settings.page_number #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.caption_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.preset.settings.caption_descriptions[0].language_description #=> String
    #   resp.preset.settings.container_settings.container #=> String, one of "F4V", "ISMV", "M2TS", "M3U8", "MOV", "MP4", "MPD", "MXF", "RAW"
    #   resp.preset.settings.container_settings.f4v_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.preset.settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "DVB", "ATSC"
    #   resp.preset.settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.audio_pids #=> Array
    #   resp.preset.settings.container_settings.m2ts_settings.audio_pids[0] #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_nit_settings.nit_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.sdt_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sub_pids #=> Array
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sub_pids[0] #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_tdt_settings.tdt_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_teletext_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.preset.settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.preset.settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.preset.settings.container_settings.m2ts_settings.max_pcr_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.min_ebp_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.preset.settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.preset.settings.container_settings.m2ts_settings.pcr_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pmt_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.private_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.program_number #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.rate_mode #=> String, one of "VBR", "CBR"
    #   resp.preset.settings.container_settings.m2ts_settings.scte_35_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP", "EBP_LEGACY"
    #   resp.preset.settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.preset.settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.preset.settings.container_settings.m2ts_settings.timed_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.video_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_pids #=> Array
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_pids[0] #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.preset.settings.container_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.preset.settings.container_settings.m3u_8_settings.pcr_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pmt_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.private_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.program_number #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.scte_35_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m3u_8_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m3u_8_settings.timed_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.video_pid #=> Integer
    #   resp.preset.settings.container_settings.mov_settings.clap_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mov_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mov_settings.mpeg_2_four_cc_control #=> String, one of "XDCAM", "MPEG"
    #   resp.preset.settings.container_settings.mov_settings.padding_control #=> String, one of "OMNEON", "NONE"
    #   resp.preset.settings.container_settings.mov_settings.reference #=> String, one of "SELF_CONTAINED", "EXTERNAL"
    #   resp.preset.settings.container_settings.mp_4_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mp_4_settings.free_space_box #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mp_4_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.preset.settings.container_settings.mp_4_settings.mp_4_major_brand #=> String
    #   resp.preset.settings.video_description.afd_signaling #=> String, one of "NONE", "AUTO", "FIXED"
    #   resp.preset.settings.video_description.anti_alias #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.codec #=> String, one of "FRAME_CAPTURE", "H_264", "H_265", "MPEG2", "PRORES"
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.max_captures #=> Integer
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.quality #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.codec_profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.field_encoding #=> String, one of "PAFF", "FORCE_FIELD"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.number_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.repeat_pps #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.softness #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.alternate_transfer_function_sei #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1", "LEVEL_6_2"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.codec_profile #=> String, one of "MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN", "MAIN_422_10BIT_HIGH"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.number_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.sample_adaptive_offset_filter_mode #=> String, one of "DEFAULT", "ADAPTIVE", "OFF"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.temporal_ids #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.tiles #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.codec_level #=> String, one of "AUTO", "LOW", "MAIN", "HIGH1440", "HIGH"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.codec_profile #=> String, one of "MAIN", "PROFILE_422"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.intra_dc_precision #=> String, one of "AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10", "INTRA_DC_PRECISION_11"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.min_i_interval #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "MULTI_PASS"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.softness #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.syntax #=> String, one of "DEFAULT", "D_10"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.codec_profile #=> String, one of "APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT", "APPLE_PRORES_422_PROXY"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.preset.settings.video_description.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.preset.settings.video_description.crop.height #=> Integer
    #   resp.preset.settings.video_description.crop.width #=> Integer
    #   resp.preset.settings.video_description.crop.x #=> Integer
    #   resp.preset.settings.video_description.crop.y #=> Integer
    #   resp.preset.settings.video_description.drop_frame_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.fixed_afd #=> Integer
    #   resp.preset.settings.video_description.height #=> Integer
    #   resp.preset.settings.video_description.position.height #=> Integer
    #   resp.preset.settings.video_description.position.width #=> Integer
    #   resp.preset.settings.video_description.position.x #=> Integer
    #   resp.preset.settings.video_description.position.y #=> Integer
    #   resp.preset.settings.video_description.respond_to_afd #=> String, one of "NONE", "RESPOND", "PASSTHROUGH"
    #   resp.preset.settings.video_description.scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.preset.settings.video_description.sharpness #=> Integer
    #   resp.preset.settings.video_description.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.brightness #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.color_space_conversion #=> String, one of "NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10", "FORCE_HLG_2020"
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.contrast #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hue #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.saturation #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.deinterlacer.algorithm #=> String, one of "INTERPOLATE", "INTERPOLATE_TICKER", "BLEND", "BLEND_TICKER"
    #   resp.preset.settings.video_description.video_preprocessors.deinterlacer.control #=> String, one of "FORCE_ALL_FRAMES", "NORMAL"
    #   resp.preset.settings.video_description.video_preprocessors.deinterlacer.mode #=> String, one of "DEINTERLACE", "INVERSE_TELECINE", "ADAPTIVE"
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images #=> Array
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].duration #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].fade_in #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].fade_out #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].height #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_inserter_input #=> String
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].layer #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].opacity #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].start_time #=> String
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].width #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.filter #=> String, one of "BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE", "SPATIAL"
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.filter_settings.strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.post_filter_sharpen_strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.speed #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.timecode_burnin.font_size #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.timecode_burnin.position #=> String, one of "TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER", "BOTTOM_RIGHT"
    #   resp.preset.settings.video_description.video_preprocessors.timecode_burnin.prefix #=> String
    #   resp.preset.settings.video_description.width #=> Integer
    #   resp.preset.type #=> String, one of "SYSTEM", "CUSTOM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CreatePreset AWS API Documentation
    #
    # @overload create_preset(params = {})
    # @param [Hash] params ({})
    def create_preset(params = {}, options = {})
      req = build_request(:create_preset, params)
      req.send_request(options)
    end

    # Create a new transcoding queue. For information about job templates
    # see the User Guide at
    # http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    #
    # @option params [String] :description
    #   Optional. A description of the queue you are creating.
    #
    # @option params [String] :name
    #   The name of the queue you are creating.
    #
    # @return [Types::CreateQueueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateQueueResponse#queue #queue} => Types::Queue
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_queue({
    #     description: "__string",
    #     name: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.queue.arn #=> String
    #   resp.queue.created_at #=> Time
    #   resp.queue.description #=> String
    #   resp.queue.last_updated #=> Time
    #   resp.queue.name #=> String
    #   resp.queue.status #=> String, one of "ACTIVE", "PAUSED"
    #   resp.queue.type #=> String, one of "SYSTEM", "CUSTOM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/CreateQueue AWS API Documentation
    #
    # @overload create_queue(params = {})
    # @param [Hash] params ({})
    def create_queue(params = {}, options = {})
      req = build_request(:create_queue, params)
      req.send_request(options)
    end

    # Permanently delete a job template you have created.
    #
    # @option params [required, String] :name
    #   The name of the job template to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job_template({
    #     name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DeleteJobTemplate AWS API Documentation
    #
    # @overload delete_job_template(params = {})
    # @param [Hash] params ({})
    def delete_job_template(params = {}, options = {})
      req = build_request(:delete_job_template, params)
      req.send_request(options)
    end

    # Permanently delete a preset you have created.
    #
    # @option params [required, String] :name
    #   The name of the preset to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_preset({
    #     name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DeletePreset AWS API Documentation
    #
    # @overload delete_preset(params = {})
    # @param [Hash] params ({})
    def delete_preset(params = {}, options = {})
      req = build_request(:delete_preset, params)
      req.send_request(options)
    end

    # Permanently delete a queue you have created.
    #
    # @option params [required, String] :name
    #   The name of the queue to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_queue({
    #     name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DeleteQueue AWS API Documentation
    #
    # @overload delete_queue(params = {})
    # @param [Hash] params ({})
    def delete_queue(params = {}, options = {})
      req = build_request(:delete_queue, params)
      req.send_request(options)
    end

    # Send an request with an empty body to the regional API endpoint to get
    # your account API endpoint.
    #
    # @option params [Integer] :max_results
    #   Optional. Max number of endpoints, up to twenty, that will be returned
    #   at one time.
    #
    # @option params [String] :next_token
    #   Use this string, provided with the response to a previous request, to
    #   request the next batch of endpoints.
    #
    # @return [Types::DescribeEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEndpointsResponse#endpoints #endpoints} => Array&lt;Types::Endpoint&gt;
    #   * {Types::DescribeEndpointsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoints({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoints #=> Array
    #   resp.endpoints[0].url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/DescribeEndpoints AWS API Documentation
    #
    # @overload describe_endpoints(params = {})
    # @param [Hash] params ({})
    def describe_endpoints(params = {}, options = {})
      req = build_request(:describe_endpoints, params)
      req.send_request(options)
    end

    # Retrieve the JSON for a specific completed transcoding job.
    #
    # @option params [required, String] :id
    #   the job ID of the job.
    #
    # @return [Types::GetJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobResponse#job #job} => Types::Job
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job({
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job.arn #=> String
    #   resp.job.created_at #=> Time
    #   resp.job.error_code #=> Integer
    #   resp.job.error_message #=> String
    #   resp.job.id #=> String
    #   resp.job.job_template #=> String
    #   resp.job.output_group_details #=> Array
    #   resp.job.output_group_details[0].output_details #=> Array
    #   resp.job.output_group_details[0].output_details[0].duration_in_ms #=> Integer
    #   resp.job.output_group_details[0].output_details[0].video_details.height_in_px #=> Integer
    #   resp.job.output_group_details[0].output_details[0].video_details.width_in_px #=> Integer
    #   resp.job.queue #=> String
    #   resp.job.role #=> String
    #   resp.job.settings.ad_avail_offset #=> Integer
    #   resp.job.settings.avail_blanking.avail_blanking_image #=> String
    #   resp.job.settings.inputs #=> Array
    #   resp.job.settings.inputs[0].audio_selector_groups #=> Hash
    #   resp.job.settings.inputs[0].audio_selector_groups["__string"].audio_selector_names #=> Array
    #   resp.job.settings.inputs[0].audio_selector_groups["__string"].audio_selector_names[0] #=> String
    #   resp.job.settings.inputs[0].audio_selectors #=> Hash
    #   resp.job.settings.inputs[0].audio_selectors["__string"].default_selection #=> String, one of "DEFAULT", "NOT_DEFAULT"
    #   resp.job.settings.inputs[0].audio_selectors["__string"].external_audio_file_input #=> String
    #   resp.job.settings.inputs[0].audio_selectors["__string"].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job.settings.inputs[0].audio_selectors["__string"].offset #=> Integer
    #   resp.job.settings.inputs[0].audio_selectors["__string"].pids #=> Array
    #   resp.job.settings.inputs[0].audio_selectors["__string"].pids[0] #=> Integer
    #   resp.job.settings.inputs[0].audio_selectors["__string"].program_selection #=> Integer
    #   resp.job.settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.job.settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.job.settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.job.settings.inputs[0].audio_selectors["__string"].remix_settings.channels_in #=> Integer
    #   resp.job.settings.inputs[0].audio_selectors["__string"].remix_settings.channels_out #=> Integer
    #   resp.job.settings.inputs[0].audio_selectors["__string"].selector_type #=> String, one of "PID", "TRACK", "LANGUAGE_CODE"
    #   resp.job.settings.inputs[0].audio_selectors["__string"].tracks #=> Array
    #   resp.job.settings.inputs[0].audio_selectors["__string"].tracks[0] #=> Integer
    #   resp.job.settings.inputs[0].caption_selectors #=> Hash
    #   resp.job.settings.inputs[0].caption_selectors["__string"].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job.settings.inputs[0].caption_selectors["__string"].source_settings.ancillary_source_settings.source_ancillary_channel_number #=> Integer
    #   resp.job.settings.inputs[0].caption_selectors["__string"].source_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.job.settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "UPCONVERT", "DISABLED"
    #   resp.job.settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.job.settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.job.settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.convert_608_to_708 #=> String, one of "UPCONVERT", "DISABLED"
    #   resp.job.settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.source_file #=> String
    #   resp.job.settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.time_delta #=> Integer
    #   resp.job.settings.inputs[0].caption_selectors["__string"].source_settings.source_type #=> String, one of "ANCILLARY", "DVB_SUB", "EMBEDDED", "SCC", "TTML", "STL", "SRT", "TELETEXT", "NULL_SOURCE"
    #   resp.job.settings.inputs[0].caption_selectors["__string"].source_settings.teletext_source_settings.page_number #=> String
    #   resp.job.settings.inputs[0].deblock_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job.settings.inputs[0].denoise_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job.settings.inputs[0].file_input #=> String
    #   resp.job.settings.inputs[0].filter_enable #=> String, one of "AUTO", "DISABLE", "FORCE"
    #   resp.job.settings.inputs[0].filter_strength #=> Integer
    #   resp.job.settings.inputs[0].input_clippings #=> Array
    #   resp.job.settings.inputs[0].input_clippings[0].end_timecode #=> String
    #   resp.job.settings.inputs[0].input_clippings[0].start_timecode #=> String
    #   resp.job.settings.inputs[0].program_number #=> Integer
    #   resp.job.settings.inputs[0].psi_control #=> String, one of "IGNORE_PSI", "USE_PSI"
    #   resp.job.settings.inputs[0].timecode_source #=> String, one of "EMBEDDED", "ZEROBASED", "SPECIFIEDSTART"
    #   resp.job.settings.inputs[0].video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709", "HDR10", "HLG_2020"
    #   resp.job.settings.inputs[0].video_selector.color_space_usage #=> String, one of "FORCE", "FALLBACK"
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.job.settings.inputs[0].video_selector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.job.settings.inputs[0].video_selector.pid #=> Integer
    #   resp.job.settings.inputs[0].video_selector.program_number #=> Integer
    #   resp.job.settings.nielsen_configuration.breakout_code #=> Integer
    #   resp.job.settings.nielsen_configuration.distributor_id #=> String
    #   resp.job.settings.output_groups #=> Array
    #   resp.job.settings.output_groups[0].custom_name #=> String
    #   resp.job.settings.output_groups[0].name #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.base_url #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.destination #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.fragment_length #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.hbbtv_compliance #=> String, one of "HBBTV_1_5", "NONE"
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.min_buffer_time #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.segment_control #=> String, one of "SINGLE_FILE", "SEGMENTED_FILES"
    #   resp.job.settings.output_groups[0].output_group_settings.dash_iso_group_settings.segment_length #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.file_group_settings.destination #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers #=> Array
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers[0] #=> String, one of "ELEMENTAL", "ELEMENTAL_SCTE35"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.base_url #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings #=> Array
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].caption_channel #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_description #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_setting #=> String, one of "INSERT", "OMIT", "NONE"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.client_cache #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.codec_specification #=> String, one of "RFC_6381", "RFC_4281"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.destination #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.directory_structure #=> String, one of "SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.constant_initialization_vector #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.encryption_method #=> String, one of "AES128", "SAMPLE_AES"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.initialization_vector_in_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.key_format #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.key_format_versions #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.static_key_value #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.url #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.type #=> String, one of "SPEKE", "STATIC_KEY"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.manifest_compression #=> String, one of "GZIP", "NONE"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.manifest_duration_format #=> String, one of "FLOATING_POINT", "INTEGER"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.min_segment_length #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.output_selection #=> String, one of "MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time_period #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.segment_control #=> String, one of "SINGLE_FILE", "SEGMENTED_FILES"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.segment_length #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.segments_per_subdirectory #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.stream_inf_resolution #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.hls_group_settings.timestamp_delta_milliseconds #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.audio_deduplication #=> String, one of "COMBINE_DUPLICATE_STREAMS", "NONE"
    #   resp.job.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.destination #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.job.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.job.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.fragment_length #=> Integer
    #   resp.job.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.manifest_encoding #=> String, one of "UTF8", "UTF16"
    #   resp.job.settings.output_groups[0].output_group_settings.type #=> String, one of "HLS_GROUP_SETTINGS", "DASH_ISO_GROUP_SETTINGS", "FILE_GROUP_SETTINGS", "MS_SMOOTH_GROUP_SETTINGS"
    #   resp.job.settings.output_groups[0].outputs #=> Array
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions #=> Array
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_BS_1770_1", "ITU_BS_1770_2"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO", "MEASURE_ONLY"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.correction_gate_level #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.loudness_logging #=> String, one of "LOG", "DONT_LOG"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.peak_calculation #=> String, one of "TRUE_PEAK", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_source_name #=> String
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_type #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.audio_description_broadcaster_mix #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.codec_profile #=> String, one of "LC", "HEV1", "HEV2"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.specification #=> String, one of "MPEG2", "MPEG4"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "LOW", "MEDIUM_LOW", "MEDIUM_HIGH", "HIGH"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.sample_rate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.bit_depth #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.channels #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.sample_rate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.codec #=> String, one of "AAC", "MP2", "WAV", "AIFF", "AC3", "EAC3", "PASSTHROUGH"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_line #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_rf #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "WHEN_POSSIBLE", "NO_PASSTHROUGH"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "SHIFT_90_DEGREES", "NO_SHIFT"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.sample_rate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "NOT_INDICATED", "LO_RO", "LT_RT", "DPL2"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.channels #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.channels #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].audio_descriptions[0].stream_name #=> String
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions #=> Array
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].caption_selector_name #=> String
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.background_opacity #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_opacity #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_resolution #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_size #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.outline_size #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_opacity #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_x_offset #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_y_offset #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.x_position #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.y_position #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.destination_type #=> String, one of "BURN_IN", "DVB_SUB", "EMBEDDED", "SCC", "SRT", "TELETEXT", "TTML", "WEBVTT"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.scc_destination_settings.framerate #=> String, one of "FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_29_97_DROPFRAME", "FRAMERATE_29_97_NON_DROPFRAME"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.teletext_destination_settings.page_number #=> String
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.ttml_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job.settings.output_groups[0].outputs[0].caption_descriptions[0].language_description #=> String
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.container #=> String, one of "F4V", "ISMV", "M2TS", "M3U8", "MOV", "MP4", "MPD", "MXF", "RAW"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.f4v_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_buffer_model #=> String, one of "DVB", "ATSC"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_pids #=> Array
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_pids[0] #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.nit_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.sdt_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sub_pids #=> Array
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sub_pids[0] #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_tdt_settings.tdt_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_teletext_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.max_pcr_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.min_ebp_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pcr_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pmt_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.private_metadata_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.program_number #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.rate_mode #=> String, one of "VBR", "CBR"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.scte_35_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_markers #=> String, one of "NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP", "EBP_LEGACY"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.timed_metadata_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.video_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_pids #=> Array
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_pids[0] #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pcr_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pmt_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.private_metadata_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.program_number #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.scte_35_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.timed_metadata_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.video_pid #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.mov_settings.clap_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.mov_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.mov_settings.mpeg_2_four_cc_control #=> String, one of "XDCAM", "MPEG"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.mov_settings.padding_control #=> String, one of "OMNEON", "NONE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.mov_settings.reference #=> String, one of "SELF_CONTAINED", "EXTERNAL"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.mp_4_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.mp_4_settings.free_space_box #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.mp_4_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.job.settings.output_groups[0].outputs[0].container_settings.mp_4_settings.mp_4_major_brand #=> String
    #   resp.job.settings.output_groups[0].outputs[0].extension #=> String
    #   resp.job.settings.output_groups[0].outputs[0].name_modifier #=> String
    #   resp.job.settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_group_id #=> String
    #   resp.job.settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_rendition_sets #=> String
    #   resp.job.settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.job.settings.output_groups[0].outputs[0].output_settings.hls_settings.i_frame_only_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job.settings.output_groups[0].outputs[0].output_settings.hls_settings.segment_modifier #=> String
    #   resp.job.settings.output_groups[0].outputs[0].preset #=> String
    #   resp.job.settings.output_groups[0].outputs[0].video_description.afd_signaling #=> String, one of "NONE", "AUTO", "FIXED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.anti_alias #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.codec #=> String, one of "FRAME_CAPTURE", "H_264", "H_265", "MPEG2", "PRORES"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.framerate_denominator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.framerate_numerator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.max_captures #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.quality #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.codec_profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.field_encoding #=> String, one of "PAFF", "FORCE_FIELD"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_size #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.hrd_buffer_size #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.number_reference_frames #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.repeat_pps #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.slices #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.softness #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.alternate_transfer_function_sei #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1", "LEVEL_6_2"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.codec_profile #=> String, one of "MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN", "MAIN_422_10BIT_HIGH"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_size #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.hrd_buffer_size #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.number_reference_frames #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.sample_adaptive_offset_filter_mode #=> String, one of "DEFAULT", "ADAPTIVE", "OFF"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.slices #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.temporal_ids #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.tiles #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.codec_level #=> String, one of "AUTO", "LOW", "MAIN", "HIGH1440", "HIGH"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.codec_profile #=> String, one of "MAIN", "PROFILE_422"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.hrd_buffer_size #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.intra_dc_precision #=> String, one of "AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10", "INTRA_DC_PRECISION_11"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.max_bitrate #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.min_i_interval #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_denominator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_numerator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "MULTI_PASS"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.softness #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.syntax #=> String, one of "DEFAULT", "D_10"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.codec_profile #=> String, one of "APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT", "APPLE_PRORES_422_PROXY"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_denominator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_numerator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_denominator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_numerator #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.crop.height #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.crop.width #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.crop.x #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.crop.y #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.drop_frame_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.fixed_afd #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.height #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.position.height #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.position.width #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.position.x #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.position.y #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.respond_to_afd #=> String, one of "NONE", "RESPOND", "PASSTHROUGH"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.sharpness #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.brightness #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.color_space_conversion #=> String, one of "NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10", "FORCE_HLG_2020"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.contrast #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hue #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.saturation #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.algorithm #=> String, one of "INTERPOLATE", "INTERPOLATE_TICKER", "BLEND", "BLEND_TICKER"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.control #=> String, one of "FORCE_ALL_FRAMES", "NORMAL"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.mode #=> String, one of "DEINTERLACE", "INVERSE_TELECINE", "ADAPTIVE"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images #=> Array
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].duration #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].fade_in #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].fade_out #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].height #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_inserter_input #=> String
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_x #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_y #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].layer #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].opacity #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].start_time #=> String
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].width #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.filter #=> String, one of "BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE", "SPATIAL"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.filter_settings.strength #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.post_filter_sharpen_strength #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.speed #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.strength #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.font_size #=> Integer
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.position #=> String, one of "TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER", "BOTTOM_RIGHT"
    #   resp.job.settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.prefix #=> String
    #   resp.job.settings.output_groups[0].outputs[0].video_description.width #=> Integer
    #   resp.job.settings.timecode_config.anchor #=> String
    #   resp.job.settings.timecode_config.source #=> String, one of "EMBEDDED", "ZEROBASED", "SPECIFIEDSTART"
    #   resp.job.settings.timecode_config.start #=> String
    #   resp.job.settings.timecode_config.timestamp_offset #=> String
    #   resp.job.settings.timed_metadata_insertion.id_3_insertions #=> Array
    #   resp.job.settings.timed_metadata_insertion.id_3_insertions[0].id_3 #=> String
    #   resp.job.settings.timed_metadata_insertion.id_3_insertions[0].timecode #=> String
    #   resp.job.status #=> String, one of "SUBMITTED", "PROGRESSING", "COMPLETE", "CANCELED", "ERROR"
    #   resp.job.timing.finish_time #=> Time
    #   resp.job.timing.start_time #=> Time
    #   resp.job.timing.submit_time #=> Time
    #   resp.job.user_metadata #=> Hash
    #   resp.job.user_metadata["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetJob AWS API Documentation
    #
    # @overload get_job(params = {})
    # @param [Hash] params ({})
    def get_job(params = {}, options = {})
      req = build_request(:get_job, params)
      req.send_request(options)
    end

    # Retrieve the JSON for a specific job template.
    #
    # @option params [required, String] :name
    #   The name of the job template.
    #
    # @return [Types::GetJobTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobTemplateResponse#job_template #job_template} => Types::JobTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_template({
    #     name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_template.arn #=> String
    #   resp.job_template.category #=> String
    #   resp.job_template.created_at #=> Time
    #   resp.job_template.description #=> String
    #   resp.job_template.last_updated #=> Time
    #   resp.job_template.name #=> String
    #   resp.job_template.queue #=> String
    #   resp.job_template.settings.ad_avail_offset #=> Integer
    #   resp.job_template.settings.avail_blanking.avail_blanking_image #=> String
    #   resp.job_template.settings.inputs #=> Array
    #   resp.job_template.settings.inputs[0].audio_selector_groups #=> Hash
    #   resp.job_template.settings.inputs[0].audio_selector_groups["__string"].audio_selector_names #=> Array
    #   resp.job_template.settings.inputs[0].audio_selector_groups["__string"].audio_selector_names[0] #=> String
    #   resp.job_template.settings.inputs[0].audio_selectors #=> Hash
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].default_selection #=> String, one of "DEFAULT", "NOT_DEFAULT"
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].external_audio_file_input #=> String
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].offset #=> Integer
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].pids #=> Array
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].pids[0] #=> Integer
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].program_selection #=> Integer
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].remix_settings.channels_in #=> Integer
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].remix_settings.channels_out #=> Integer
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].selector_type #=> String, one of "PID", "TRACK", "LANGUAGE_CODE"
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].tracks #=> Array
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].tracks[0] #=> Integer
    #   resp.job_template.settings.inputs[0].caption_selectors #=> Hash
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.ancillary_source_settings.source_ancillary_channel_number #=> Integer
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "UPCONVERT", "DISABLED"
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.convert_608_to_708 #=> String, one of "UPCONVERT", "DISABLED"
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.source_file #=> String
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.time_delta #=> Integer
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.source_type #=> String, one of "ANCILLARY", "DVB_SUB", "EMBEDDED", "SCC", "TTML", "STL", "SRT", "TELETEXT", "NULL_SOURCE"
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.teletext_source_settings.page_number #=> String
    #   resp.job_template.settings.inputs[0].deblock_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_template.settings.inputs[0].denoise_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_template.settings.inputs[0].filter_enable #=> String, one of "AUTO", "DISABLE", "FORCE"
    #   resp.job_template.settings.inputs[0].filter_strength #=> Integer
    #   resp.job_template.settings.inputs[0].input_clippings #=> Array
    #   resp.job_template.settings.inputs[0].input_clippings[0].end_timecode #=> String
    #   resp.job_template.settings.inputs[0].input_clippings[0].start_timecode #=> String
    #   resp.job_template.settings.inputs[0].program_number #=> Integer
    #   resp.job_template.settings.inputs[0].psi_control #=> String, one of "IGNORE_PSI", "USE_PSI"
    #   resp.job_template.settings.inputs[0].timecode_source #=> String, one of "EMBEDDED", "ZEROBASED", "SPECIFIEDSTART"
    #   resp.job_template.settings.inputs[0].video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709", "HDR10", "HLG_2020"
    #   resp.job_template.settings.inputs[0].video_selector.color_space_usage #=> String, one of "FORCE", "FALLBACK"
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.pid #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.program_number #=> Integer
    #   resp.job_template.settings.nielsen_configuration.breakout_code #=> Integer
    #   resp.job_template.settings.nielsen_configuration.distributor_id #=> String
    #   resp.job_template.settings.output_groups #=> Array
    #   resp.job_template.settings.output_groups[0].custom_name #=> String
    #   resp.job_template.settings.output_groups[0].name #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.base_url #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.destination #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.fragment_length #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.hbbtv_compliance #=> String, one of "HBBTV_1_5", "NONE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.min_buffer_time #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.segment_control #=> String, one of "SINGLE_FILE", "SEGMENTED_FILES"
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.segment_length #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.file_group_settings.destination #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers #=> Array
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers[0] #=> String, one of "ELEMENTAL", "ELEMENTAL_SCTE35"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.base_url #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings #=> Array
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].caption_channel #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_description #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_setting #=> String, one of "INSERT", "OMIT", "NONE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.client_cache #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.codec_specification #=> String, one of "RFC_6381", "RFC_4281"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.destination #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.directory_structure #=> String, one of "SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.constant_initialization_vector #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.encryption_method #=> String, one of "AES128", "SAMPLE_AES"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.initialization_vector_in_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.key_format #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.key_format_versions #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.static_key_value #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.url #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.type #=> String, one of "SPEKE", "STATIC_KEY"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.manifest_compression #=> String, one of "GZIP", "NONE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.manifest_duration_format #=> String, one of "FLOATING_POINT", "INTEGER"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.min_segment_length #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.output_selection #=> String, one of "MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time_period #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.segment_control #=> String, one of "SINGLE_FILE", "SEGMENTED_FILES"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.segment_length #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.segments_per_subdirectory #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.stream_inf_resolution #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.timestamp_delta_milliseconds #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.audio_deduplication #=> String, one of "COMBINE_DUPLICATE_STREAMS", "NONE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.destination #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.fragment_length #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.manifest_encoding #=> String, one of "UTF8", "UTF16"
    #   resp.job_template.settings.output_groups[0].output_group_settings.type #=> String, one of "HLS_GROUP_SETTINGS", "DASH_ISO_GROUP_SETTINGS", "FILE_GROUP_SETTINGS", "MS_SMOOTH_GROUP_SETTINGS"
    #   resp.job_template.settings.output_groups[0].outputs #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_BS_1770_1", "ITU_BS_1770_2"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO", "MEASURE_ONLY"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.correction_gate_level #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.loudness_logging #=> String, one of "LOG", "DONT_LOG"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.peak_calculation #=> String, one of "TRUE_PEAK", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_source_name #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_type #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.audio_description_broadcaster_mix #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.codec_profile #=> String, one of "LC", "HEV1", "HEV2"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.specification #=> String, one of "MPEG2", "MPEG4"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "LOW", "MEDIUM_LOW", "MEDIUM_HIGH", "HIGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.sample_rate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.bit_depth #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.channels #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.sample_rate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.codec #=> String, one of "AAC", "MP2", "WAV", "AIFF", "AC3", "EAC3", "PASSTHROUGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_line #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_rf #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "WHEN_POSSIBLE", "NO_PASSTHROUGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "SHIFT_90_DEGREES", "NO_SHIFT"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.sample_rate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "NOT_INDICATED", "LO_RO", "LT_RT", "DPL2"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.channels #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.channels #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].stream_name #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].caption_selector_name #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.background_opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_resolution #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.outline_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_x_offset #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_y_offset #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.x_position #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.y_position #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.destination_type #=> String, one of "BURN_IN", "DVB_SUB", "EMBEDDED", "SCC", "SRT", "TELETEXT", "TTML", "WEBVTT"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.scc_destination_settings.framerate #=> String, one of "FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_29_97_DROPFRAME", "FRAMERATE_29_97_NON_DROPFRAME"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.teletext_destination_settings.page_number #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.ttml_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].language_description #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.container #=> String, one of "F4V", "ISMV", "M2TS", "M3U8", "MOV", "MP4", "MPD", "MXF", "RAW"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.f4v_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_buffer_model #=> String, one of "DVB", "ATSC"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_pids #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_pids[0] #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.nit_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.sdt_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sub_pids #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sub_pids[0] #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_tdt_settings.tdt_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_teletext_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.max_pcr_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.min_ebp_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pcr_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pmt_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.private_metadata_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.program_number #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.rate_mode #=> String, one of "VBR", "CBR"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.scte_35_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_markers #=> String, one of "NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP", "EBP_LEGACY"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.timed_metadata_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.video_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_pids #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_pids[0] #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pcr_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pmt_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.private_metadata_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.program_number #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.scte_35_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.timed_metadata_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.video_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mov_settings.clap_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mov_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mov_settings.mpeg_2_four_cc_control #=> String, one of "XDCAM", "MPEG"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mov_settings.padding_control #=> String, one of "OMNEON", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mov_settings.reference #=> String, one of "SELF_CONTAINED", "EXTERNAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mp_4_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mp_4_settings.free_space_box #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mp_4_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mp_4_settings.mp_4_major_brand #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].extension #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].name_modifier #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_group_id #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_rendition_sets #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.job_template.settings.output_groups[0].outputs[0].output_settings.hls_settings.i_frame_only_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].outputs[0].output_settings.hls_settings.segment_modifier #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].preset #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.afd_signaling #=> String, one of "NONE", "AUTO", "FIXED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.anti_alias #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.codec #=> String, one of "FRAME_CAPTURE", "H_264", "H_265", "MPEG2", "PRORES"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.framerate_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.framerate_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.max_captures #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.quality #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.codec_profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.field_encoding #=> String, one of "PAFF", "FORCE_FIELD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_size #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.hrd_buffer_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.number_reference_frames #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.repeat_pps #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.slices #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.softness #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.alternate_transfer_function_sei #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1", "LEVEL_6_2"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.codec_profile #=> String, one of "MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN", "MAIN_422_10BIT_HIGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_size #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.hrd_buffer_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.number_reference_frames #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.sample_adaptive_offset_filter_mode #=> String, one of "DEFAULT", "ADAPTIVE", "OFF"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.slices #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.temporal_ids #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.tiles #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.codec_level #=> String, one of "AUTO", "LOW", "MAIN", "HIGH1440", "HIGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.codec_profile #=> String, one of "MAIN", "PROFILE_422"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.hrd_buffer_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.intra_dc_precision #=> String, one of "AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10", "INTRA_DC_PRECISION_11"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.max_bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.min_i_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "MULTI_PASS"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.softness #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.syntax #=> String, one of "DEFAULT", "D_10"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.codec_profile #=> String, one of "APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT", "APPLE_PRORES_422_PROXY"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.crop.height #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.crop.width #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.crop.x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.crop.y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.drop_frame_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.fixed_afd #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.height #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.position.height #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.position.width #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.position.x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.position.y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.respond_to_afd #=> String, one of "NONE", "RESPOND", "PASSTHROUGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.sharpness #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.brightness #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.color_space_conversion #=> String, one of "NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10", "FORCE_HLG_2020"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.contrast #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hue #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.saturation #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.algorithm #=> String, one of "INTERPOLATE", "INTERPOLATE_TICKER", "BLEND", "BLEND_TICKER"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.control #=> String, one of "FORCE_ALL_FRAMES", "NORMAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.mode #=> String, one of "DEINTERLACE", "INVERSE_TELECINE", "ADAPTIVE"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].duration #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].fade_in #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].fade_out #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].height #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_inserter_input #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].layer #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].start_time #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].width #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.filter #=> String, one of "BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE", "SPATIAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.filter_settings.strength #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.post_filter_sharpen_strength #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.speed #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.strength #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.font_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.position #=> String, one of "TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER", "BOTTOM_RIGHT"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.prefix #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.width #=> Integer
    #   resp.job_template.settings.timecode_config.anchor #=> String
    #   resp.job_template.settings.timecode_config.source #=> String, one of "EMBEDDED", "ZEROBASED", "SPECIFIEDSTART"
    #   resp.job_template.settings.timecode_config.start #=> String
    #   resp.job_template.settings.timecode_config.timestamp_offset #=> String
    #   resp.job_template.settings.timed_metadata_insertion.id_3_insertions #=> Array
    #   resp.job_template.settings.timed_metadata_insertion.id_3_insertions[0].id_3 #=> String
    #   resp.job_template.settings.timed_metadata_insertion.id_3_insertions[0].timecode #=> String
    #   resp.job_template.type #=> String, one of "SYSTEM", "CUSTOM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetJobTemplate AWS API Documentation
    #
    # @overload get_job_template(params = {})
    # @param [Hash] params ({})
    def get_job_template(params = {}, options = {})
      req = build_request(:get_job_template, params)
      req.send_request(options)
    end

    # Retrieve the JSON for a specific preset.
    #
    # @option params [required, String] :name
    #   The name of the preset.
    #
    # @return [Types::GetPresetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPresetResponse#preset #preset} => Types::Preset
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_preset({
    #     name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.preset.arn #=> String
    #   resp.preset.category #=> String
    #   resp.preset.created_at #=> Time
    #   resp.preset.description #=> String
    #   resp.preset.last_updated #=> Time
    #   resp.preset.name #=> String
    #   resp.preset.settings.audio_descriptions #=> Array
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_BS_1770_1", "ITU_BS_1770_2"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO", "MEASURE_ONLY"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.correction_gate_level #=> Integer
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.loudness_logging #=> String, one of "LOG", "DONT_LOG"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.peak_calculation #=> String, one of "TRUE_PEAK", "NONE"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.preset.settings.audio_descriptions[0].audio_source_name #=> String
    #   resp.preset.settings.audio_descriptions[0].audio_type #=> Integer
    #   resp.preset.settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.audio_description_broadcaster_mix #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.codec_profile #=> String, one of "LC", "HEV1", "HEV2"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.specification #=> String, one of "MPEG2", "MPEG4"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "LOW", "MEDIUM_LOW", "MEDIUM_HIGH", "HIGH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aiff_settings.bit_depth #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aiff_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aiff_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.codec #=> String, one of "AAC", "MP2", "WAV", "AIFF", "AC3", "EAC3", "PASSTHROUGH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_line #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_rf #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "WHEN_POSSIBLE", "NO_PASSTHROUGH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "SHIFT_90_DEGREES", "NO_SHIFT"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "NOT_INDICATED", "LO_RO", "LT_RT", "DPL2"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_2_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.preset.settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.preset.settings.audio_descriptions[0].stream_name #=> String
    #   resp.preset.settings.caption_descriptions #=> Array
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.background_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_resolution #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.outline_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_x_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_y_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.x_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.y_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.destination_type #=> String, one of "BURN_IN", "DVB_SUB", "EMBEDDED", "SCC", "SRT", "TELETEXT", "TTML", "WEBVTT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.scc_destination_settings.framerate #=> String, one of "FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_29_97_DROPFRAME", "FRAMERATE_29_97_NON_DROPFRAME"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.teletext_destination_settings.page_number #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.caption_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.preset.settings.caption_descriptions[0].language_description #=> String
    #   resp.preset.settings.container_settings.container #=> String, one of "F4V", "ISMV", "M2TS", "M3U8", "MOV", "MP4", "MPD", "MXF", "RAW"
    #   resp.preset.settings.container_settings.f4v_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.preset.settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "DVB", "ATSC"
    #   resp.preset.settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.audio_pids #=> Array
    #   resp.preset.settings.container_settings.m2ts_settings.audio_pids[0] #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_nit_settings.nit_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.sdt_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sub_pids #=> Array
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sub_pids[0] #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_tdt_settings.tdt_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_teletext_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.preset.settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.preset.settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.preset.settings.container_settings.m2ts_settings.max_pcr_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.min_ebp_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.preset.settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.preset.settings.container_settings.m2ts_settings.pcr_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pmt_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.private_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.program_number #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.rate_mode #=> String, one of "VBR", "CBR"
    #   resp.preset.settings.container_settings.m2ts_settings.scte_35_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP", "EBP_LEGACY"
    #   resp.preset.settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.preset.settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.preset.settings.container_settings.m2ts_settings.timed_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.video_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_pids #=> Array
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_pids[0] #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.preset.settings.container_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.preset.settings.container_settings.m3u_8_settings.pcr_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pmt_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.private_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.program_number #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.scte_35_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m3u_8_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m3u_8_settings.timed_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.video_pid #=> Integer
    #   resp.preset.settings.container_settings.mov_settings.clap_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mov_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mov_settings.mpeg_2_four_cc_control #=> String, one of "XDCAM", "MPEG"
    #   resp.preset.settings.container_settings.mov_settings.padding_control #=> String, one of "OMNEON", "NONE"
    #   resp.preset.settings.container_settings.mov_settings.reference #=> String, one of "SELF_CONTAINED", "EXTERNAL"
    #   resp.preset.settings.container_settings.mp_4_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mp_4_settings.free_space_box #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mp_4_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.preset.settings.container_settings.mp_4_settings.mp_4_major_brand #=> String
    #   resp.preset.settings.video_description.afd_signaling #=> String, one of "NONE", "AUTO", "FIXED"
    #   resp.preset.settings.video_description.anti_alias #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.codec #=> String, one of "FRAME_CAPTURE", "H_264", "H_265", "MPEG2", "PRORES"
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.max_captures #=> Integer
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.quality #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.codec_profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.field_encoding #=> String, one of "PAFF", "FORCE_FIELD"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.number_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.repeat_pps #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.softness #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.alternate_transfer_function_sei #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1", "LEVEL_6_2"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.codec_profile #=> String, one of "MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN", "MAIN_422_10BIT_HIGH"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.number_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.sample_adaptive_offset_filter_mode #=> String, one of "DEFAULT", "ADAPTIVE", "OFF"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.temporal_ids #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.tiles #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.codec_level #=> String, one of "AUTO", "LOW", "MAIN", "HIGH1440", "HIGH"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.codec_profile #=> String, one of "MAIN", "PROFILE_422"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.intra_dc_precision #=> String, one of "AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10", "INTRA_DC_PRECISION_11"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.min_i_interval #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "MULTI_PASS"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.softness #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.syntax #=> String, one of "DEFAULT", "D_10"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.codec_profile #=> String, one of "APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT", "APPLE_PRORES_422_PROXY"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.preset.settings.video_description.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.preset.settings.video_description.crop.height #=> Integer
    #   resp.preset.settings.video_description.crop.width #=> Integer
    #   resp.preset.settings.video_description.crop.x #=> Integer
    #   resp.preset.settings.video_description.crop.y #=> Integer
    #   resp.preset.settings.video_description.drop_frame_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.fixed_afd #=> Integer
    #   resp.preset.settings.video_description.height #=> Integer
    #   resp.preset.settings.video_description.position.height #=> Integer
    #   resp.preset.settings.video_description.position.width #=> Integer
    #   resp.preset.settings.video_description.position.x #=> Integer
    #   resp.preset.settings.video_description.position.y #=> Integer
    #   resp.preset.settings.video_description.respond_to_afd #=> String, one of "NONE", "RESPOND", "PASSTHROUGH"
    #   resp.preset.settings.video_description.scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.preset.settings.video_description.sharpness #=> Integer
    #   resp.preset.settings.video_description.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.brightness #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.color_space_conversion #=> String, one of "NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10", "FORCE_HLG_2020"
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.contrast #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hue #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.saturation #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.deinterlacer.algorithm #=> String, one of "INTERPOLATE", "INTERPOLATE_TICKER", "BLEND", "BLEND_TICKER"
    #   resp.preset.settings.video_description.video_preprocessors.deinterlacer.control #=> String, one of "FORCE_ALL_FRAMES", "NORMAL"
    #   resp.preset.settings.video_description.video_preprocessors.deinterlacer.mode #=> String, one of "DEINTERLACE", "INVERSE_TELECINE", "ADAPTIVE"
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images #=> Array
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].duration #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].fade_in #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].fade_out #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].height #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_inserter_input #=> String
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].layer #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].opacity #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].start_time #=> String
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].width #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.filter #=> String, one of "BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE", "SPATIAL"
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.filter_settings.strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.post_filter_sharpen_strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.speed #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.timecode_burnin.font_size #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.timecode_burnin.position #=> String, one of "TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER", "BOTTOM_RIGHT"
    #   resp.preset.settings.video_description.video_preprocessors.timecode_burnin.prefix #=> String
    #   resp.preset.settings.video_description.width #=> Integer
    #   resp.preset.type #=> String, one of "SYSTEM", "CUSTOM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetPreset AWS API Documentation
    #
    # @overload get_preset(params = {})
    # @param [Hash] params ({})
    def get_preset(params = {}, options = {})
      req = build_request(:get_preset, params)
      req.send_request(options)
    end

    # Retrieve the JSON for a specific queue.
    #
    # @option params [required, String] :name
    #   The name of the queue.
    #
    # @return [Types::GetQueueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueueResponse#queue #queue} => Types::Queue
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_queue({
    #     name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.queue.arn #=> String
    #   resp.queue.created_at #=> Time
    #   resp.queue.description #=> String
    #   resp.queue.last_updated #=> Time
    #   resp.queue.name #=> String
    #   resp.queue.status #=> String, one of "ACTIVE", "PAUSED"
    #   resp.queue.type #=> String, one of "SYSTEM", "CUSTOM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/GetQueue AWS API Documentation
    #
    # @overload get_queue(params = {})
    # @param [Hash] params ({})
    def get_queue(params = {}, options = {})
      req = build_request(:get_queue, params)
      req.send_request(options)
    end

    # Retrieve a JSON array of up to twenty of your job templates. This will
    # return the templates themselves, not just a list of them. To retrieve
    # the next twenty templates, use the nextToken string returned with the
    # array
    #
    # @option params [String] :category
    #   Optionally, specify a job template category to limit responses to only
    #   job templates from that category.
    #
    # @option params [String] :list_by
    #   Optional. When you request a list of job templates, you can choose to
    #   list them alphabetically by NAME or chronologically by CREATION\_DATE.
    #   If you don't specify, the service will list them by name.
    #
    # @option params [Integer] :max_results
    #   Optional. Number of job templates, up to twenty, that will be returned
    #   at one time.
    #
    # @option params [String] :next_token
    #   Use this string, provided with the response to a previous request, to
    #   request the next batch of job templates.
    #
    # @option params [String] :order
    #   When you request lists of resources, you can optionally specify
    #   whether they are sorted in ASCENDING or DESCENDING order. Default
    #   varies by resource.
    #
    # @return [Types::ListJobTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobTemplatesResponse#job_templates #job_templates} => Array&lt;Types::JobTemplate&gt;
    #   * {Types::ListJobTemplatesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_job_templates({
    #     category: "__string",
    #     list_by: "NAME", # accepts NAME, CREATION_DATE, SYSTEM
    #     max_results: 1,
    #     next_token: "__string",
    #     order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #   })
    #
    # @example Response structure
    #
    #   resp.job_templates #=> Array
    #   resp.job_templates[0].arn #=> String
    #   resp.job_templates[0].category #=> String
    #   resp.job_templates[0].created_at #=> Time
    #   resp.job_templates[0].description #=> String
    #   resp.job_templates[0].last_updated #=> Time
    #   resp.job_templates[0].name #=> String
    #   resp.job_templates[0].queue #=> String
    #   resp.job_templates[0].settings.ad_avail_offset #=> Integer
    #   resp.job_templates[0].settings.avail_blanking.avail_blanking_image #=> String
    #   resp.job_templates[0].settings.inputs #=> Array
    #   resp.job_templates[0].settings.inputs[0].audio_selector_groups #=> Hash
    #   resp.job_templates[0].settings.inputs[0].audio_selector_groups["__string"].audio_selector_names #=> Array
    #   resp.job_templates[0].settings.inputs[0].audio_selector_groups["__string"].audio_selector_names[0] #=> String
    #   resp.job_templates[0].settings.inputs[0].audio_selectors #=> Hash
    #   resp.job_templates[0].settings.inputs[0].audio_selectors["__string"].default_selection #=> String, one of "DEFAULT", "NOT_DEFAULT"
    #   resp.job_templates[0].settings.inputs[0].audio_selectors["__string"].external_audio_file_input #=> String
    #   resp.job_templates[0].settings.inputs[0].audio_selectors["__string"].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job_templates[0].settings.inputs[0].audio_selectors["__string"].offset #=> Integer
    #   resp.job_templates[0].settings.inputs[0].audio_selectors["__string"].pids #=> Array
    #   resp.job_templates[0].settings.inputs[0].audio_selectors["__string"].pids[0] #=> Integer
    #   resp.job_templates[0].settings.inputs[0].audio_selectors["__string"].program_selection #=> Integer
    #   resp.job_templates[0].settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.job_templates[0].settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.job_templates[0].settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.job_templates[0].settings.inputs[0].audio_selectors["__string"].remix_settings.channels_in #=> Integer
    #   resp.job_templates[0].settings.inputs[0].audio_selectors["__string"].remix_settings.channels_out #=> Integer
    #   resp.job_templates[0].settings.inputs[0].audio_selectors["__string"].selector_type #=> String, one of "PID", "TRACK", "LANGUAGE_CODE"
    #   resp.job_templates[0].settings.inputs[0].audio_selectors["__string"].tracks #=> Array
    #   resp.job_templates[0].settings.inputs[0].audio_selectors["__string"].tracks[0] #=> Integer
    #   resp.job_templates[0].settings.inputs[0].caption_selectors #=> Hash
    #   resp.job_templates[0].settings.inputs[0].caption_selectors["__string"].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job_templates[0].settings.inputs[0].caption_selectors["__string"].source_settings.ancillary_source_settings.source_ancillary_channel_number #=> Integer
    #   resp.job_templates[0].settings.inputs[0].caption_selectors["__string"].source_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.job_templates[0].settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "UPCONVERT", "DISABLED"
    #   resp.job_templates[0].settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.job_templates[0].settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.job_templates[0].settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.convert_608_to_708 #=> String, one of "UPCONVERT", "DISABLED"
    #   resp.job_templates[0].settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.source_file #=> String
    #   resp.job_templates[0].settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.time_delta #=> Integer
    #   resp.job_templates[0].settings.inputs[0].caption_selectors["__string"].source_settings.source_type #=> String, one of "ANCILLARY", "DVB_SUB", "EMBEDDED", "SCC", "TTML", "STL", "SRT", "TELETEXT", "NULL_SOURCE"
    #   resp.job_templates[0].settings.inputs[0].caption_selectors["__string"].source_settings.teletext_source_settings.page_number #=> String
    #   resp.job_templates[0].settings.inputs[0].deblock_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_templates[0].settings.inputs[0].denoise_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_templates[0].settings.inputs[0].filter_enable #=> String, one of "AUTO", "DISABLE", "FORCE"
    #   resp.job_templates[0].settings.inputs[0].filter_strength #=> Integer
    #   resp.job_templates[0].settings.inputs[0].input_clippings #=> Array
    #   resp.job_templates[0].settings.inputs[0].input_clippings[0].end_timecode #=> String
    #   resp.job_templates[0].settings.inputs[0].input_clippings[0].start_timecode #=> String
    #   resp.job_templates[0].settings.inputs[0].program_number #=> Integer
    #   resp.job_templates[0].settings.inputs[0].psi_control #=> String, one of "IGNORE_PSI", "USE_PSI"
    #   resp.job_templates[0].settings.inputs[0].timecode_source #=> String, one of "EMBEDDED", "ZEROBASED", "SPECIFIEDSTART"
    #   resp.job_templates[0].settings.inputs[0].video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709", "HDR10", "HLG_2020"
    #   resp.job_templates[0].settings.inputs[0].video_selector.color_space_usage #=> String, one of "FORCE", "FALLBACK"
    #   resp.job_templates[0].settings.inputs[0].video_selector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.job_templates[0].settings.inputs[0].video_selector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.job_templates[0].settings.inputs[0].video_selector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.job_templates[0].settings.inputs[0].video_selector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.job_templates[0].settings.inputs[0].video_selector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.job_templates[0].settings.inputs[0].video_selector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.job_templates[0].settings.inputs[0].video_selector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.job_templates[0].settings.inputs[0].video_selector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.job_templates[0].settings.inputs[0].video_selector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.job_templates[0].settings.inputs[0].video_selector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.job_templates[0].settings.inputs[0].video_selector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.job_templates[0].settings.inputs[0].video_selector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.job_templates[0].settings.inputs[0].video_selector.pid #=> Integer
    #   resp.job_templates[0].settings.inputs[0].video_selector.program_number #=> Integer
    #   resp.job_templates[0].settings.nielsen_configuration.breakout_code #=> Integer
    #   resp.job_templates[0].settings.nielsen_configuration.distributor_id #=> String
    #   resp.job_templates[0].settings.output_groups #=> Array
    #   resp.job_templates[0].settings.output_groups[0].custom_name #=> String
    #   resp.job_templates[0].settings.output_groups[0].name #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.base_url #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.destination #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.fragment_length #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.hbbtv_compliance #=> String, one of "HBBTV_1_5", "NONE"
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.min_buffer_time #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.segment_control #=> String, one of "SINGLE_FILE", "SEGMENTED_FILES"
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.segment_length #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.file_group_settings.destination #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers #=> Array
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers[0] #=> String, one of "ELEMENTAL", "ELEMENTAL_SCTE35"
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.base_url #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings #=> Array
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].caption_channel #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_description #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_setting #=> String, one of "INSERT", "OMIT", "NONE"
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.client_cache #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.codec_specification #=> String, one of "RFC_6381", "RFC_4281"
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.destination #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.directory_structure #=> String, one of "SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.constant_initialization_vector #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.encryption_method #=> String, one of "AES128", "SAMPLE_AES"
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.initialization_vector_in_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.key_format #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.key_format_versions #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.static_key_value #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.url #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.type #=> String, one of "SPEKE", "STATIC_KEY"
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.manifest_compression #=> String, one of "GZIP", "NONE"
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.manifest_duration_format #=> String, one of "FLOATING_POINT", "INTEGER"
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.min_segment_length #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.output_selection #=> String, one of "MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY"
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time_period #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.segment_control #=> String, one of "SINGLE_FILE", "SEGMENTED_FILES"
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.segment_length #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.segments_per_subdirectory #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.stream_inf_resolution #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.hls_group_settings.timestamp_delta_milliseconds #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.ms_smooth_group_settings.audio_deduplication #=> String, one of "COMBINE_DUPLICATE_STREAMS", "NONE"
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.ms_smooth_group_settings.destination #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.ms_smooth_group_settings.fragment_length #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.ms_smooth_group_settings.manifest_encoding #=> String, one of "UTF8", "UTF16"
    #   resp.job_templates[0].settings.output_groups[0].output_group_settings.type #=> String, one of "HLS_GROUP_SETTINGS", "DASH_ISO_GROUP_SETTINGS", "FILE_GROUP_SETTINGS", "MS_SMOOTH_GROUP_SETTINGS"
    #   resp.job_templates[0].settings.output_groups[0].outputs #=> Array
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions #=> Array
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_BS_1770_1", "ITU_BS_1770_2"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO", "MEASURE_ONLY"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.correction_gate_level #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.loudness_logging #=> String, one of "LOG", "DONT_LOG"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.peak_calculation #=> String, one of "TRUE_PEAK", "NONE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].audio_source_name #=> String
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].audio_type #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.audio_description_broadcaster_mix #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.codec_profile #=> String, one of "LC", "HEV1", "HEV2"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.specification #=> String, one of "MPEG2", "MPEG4"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "LOW", "MEDIUM_LOW", "MEDIUM_HIGH", "HIGH"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.sample_rate #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.bit_depth #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.channels #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.sample_rate #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.codec #=> String, one of "AAC", "MP2", "WAV", "AIFF", "AC3", "EAC3", "PASSTHROUGH"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_line #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_rf #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "WHEN_POSSIBLE", "NO_PASSTHROUGH"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "SHIFT_90_DEGREES", "NO_SHIFT"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.sample_rate #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "NOT_INDICATED", "LO_RO", "LT_RT", "DPL2"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.channels #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.channels #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].audio_descriptions[0].stream_name #=> String
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions #=> Array
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].caption_selector_name #=> String
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.background_opacity #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_opacity #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_resolution #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_size #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.outline_size #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_opacity #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_x_offset #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_y_offset #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.x_position #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.y_position #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.destination_type #=> String, one of "BURN_IN", "DVB_SUB", "EMBEDDED", "SCC", "SRT", "TELETEXT", "TTML", "WEBVTT"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.scc_destination_settings.framerate #=> String, one of "FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_29_97_DROPFRAME", "FRAMERATE_29_97_NON_DROPFRAME"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.teletext_destination_settings.page_number #=> String
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.ttml_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].caption_descriptions[0].language_description #=> String
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.container #=> String, one of "F4V", "ISMV", "M2TS", "M3U8", "MOV", "MP4", "MPD", "MXF", "RAW"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.f4v_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_buffer_model #=> String, one of "DVB", "ATSC"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_pids #=> Array
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_pids[0] #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.nit_interval #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.sdt_interval #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sub_pids #=> Array
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sub_pids[0] #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_tdt_settings.tdt_interval #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_teletext_pid #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.max_pcr_interval #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.min_ebp_interval #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pcr_pid #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pmt_pid #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.private_metadata_pid #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.program_number #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.rate_mode #=> String, one of "VBR", "CBR"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.scte_35_pid #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_markers #=> String, one of "NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP", "EBP_LEGACY"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.timed_metadata_pid #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.video_pid #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_pids #=> Array
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_pids[0] #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pcr_pid #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pmt_pid #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.private_metadata_pid #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.program_number #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.scte_35_pid #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.timed_metadata_pid #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.video_pid #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.mov_settings.clap_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.mov_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.mov_settings.mpeg_2_four_cc_control #=> String, one of "XDCAM", "MPEG"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.mov_settings.padding_control #=> String, one of "OMNEON", "NONE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.mov_settings.reference #=> String, one of "SELF_CONTAINED", "EXTERNAL"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.mp_4_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.mp_4_settings.free_space_box #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.mp_4_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].container_settings.mp_4_settings.mp_4_major_brand #=> String
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].extension #=> String
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].name_modifier #=> String
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_group_id #=> String
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_rendition_sets #=> String
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].output_settings.hls_settings.i_frame_only_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].output_settings.hls_settings.segment_modifier #=> String
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].preset #=> String
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.afd_signaling #=> String, one of "NONE", "AUTO", "FIXED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.anti_alias #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.codec #=> String, one of "FRAME_CAPTURE", "H_264", "H_265", "MPEG2", "PRORES"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.framerate_denominator #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.framerate_numerator #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.max_captures #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.quality #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.bitrate #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.codec_profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.field_encoding #=> String, one of "PAFF", "FORCE_FIELD"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_size #=> Float
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.hrd_buffer_size #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.number_reference_frames #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.repeat_pps #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.slices #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.softness #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.alternate_transfer_function_sei #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.bitrate #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1", "LEVEL_6_2"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.codec_profile #=> String, one of "MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN", "MAIN_422_10BIT_HIGH"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_size #=> Float
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.hrd_buffer_size #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.number_reference_frames #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.sample_adaptive_offset_filter_mode #=> String, one of "DEFAULT", "ADAPTIVE", "OFF"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.slices #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.temporal_ids #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.tiles #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.bitrate #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.codec_level #=> String, one of "AUTO", "LOW", "MAIN", "HIGH1440", "HIGH"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.codec_profile #=> String, one of "MAIN", "PROFILE_422"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.hrd_buffer_size #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.intra_dc_precision #=> String, one of "AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10", "INTRA_DC_PRECISION_11"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.max_bitrate #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.min_i_interval #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_denominator #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_numerator #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "MULTI_PASS"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.softness #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.syntax #=> String, one of "DEFAULT", "D_10"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.codec_profile #=> String, one of "APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT", "APPLE_PRORES_422_PROXY"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_denominator #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_numerator #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_denominator #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_numerator #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.crop.height #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.crop.width #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.crop.x #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.crop.y #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.drop_frame_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.fixed_afd #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.height #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.position.height #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.position.width #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.position.x #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.position.y #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.respond_to_afd #=> String, one of "NONE", "RESPOND", "PASSTHROUGH"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.sharpness #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.brightness #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.color_space_conversion #=> String, one of "NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10", "FORCE_HLG_2020"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.contrast #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hue #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.saturation #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.algorithm #=> String, one of "INTERPOLATE", "INTERPOLATE_TICKER", "BLEND", "BLEND_TICKER"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.control #=> String, one of "FORCE_ALL_FRAMES", "NORMAL"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.mode #=> String, one of "DEINTERLACE", "INVERSE_TELECINE", "ADAPTIVE"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images #=> Array
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].duration #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].fade_in #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].fade_out #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].height #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_inserter_input #=> String
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_x #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_y #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].layer #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].opacity #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].start_time #=> String
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].width #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.filter #=> String, one of "BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE", "SPATIAL"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.filter_settings.strength #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.post_filter_sharpen_strength #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.speed #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.strength #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.font_size #=> Integer
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.position #=> String, one of "TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER", "BOTTOM_RIGHT"
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.prefix #=> String
    #   resp.job_templates[0].settings.output_groups[0].outputs[0].video_description.width #=> Integer
    #   resp.job_templates[0].settings.timecode_config.anchor #=> String
    #   resp.job_templates[0].settings.timecode_config.source #=> String, one of "EMBEDDED", "ZEROBASED", "SPECIFIEDSTART"
    #   resp.job_templates[0].settings.timecode_config.start #=> String
    #   resp.job_templates[0].settings.timecode_config.timestamp_offset #=> String
    #   resp.job_templates[0].settings.timed_metadata_insertion.id_3_insertions #=> Array
    #   resp.job_templates[0].settings.timed_metadata_insertion.id_3_insertions[0].id_3 #=> String
    #   resp.job_templates[0].settings.timed_metadata_insertion.id_3_insertions[0].timecode #=> String
    #   resp.job_templates[0].type #=> String, one of "SYSTEM", "CUSTOM"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListJobTemplates AWS API Documentation
    #
    # @overload list_job_templates(params = {})
    # @param [Hash] params ({})
    def list_job_templates(params = {}, options = {})
      req = build_request(:list_job_templates, params)
      req.send_request(options)
    end

    # Retrieve a JSON array of up to twenty of your most recently created
    # jobs. This array includes in-process, completed, and errored jobs.
    # This will return the jobs themselves, not just a list of the jobs. To
    # retrieve the twenty next most recent jobs, use the nextToken string
    # returned with the array.
    #
    # @option params [Integer] :max_results
    #   Optional. Number of jobs, up to twenty, that will be returned at one
    #   time.
    #
    # @option params [String] :next_token
    #   Use this string, provided with the response to a previous request, to
    #   request the next batch of jobs.
    #
    # @option params [String] :order
    #   When you request lists of resources, you can optionally specify
    #   whether they are sorted in ASCENDING or DESCENDING order. Default
    #   varies by resource.
    #
    # @option params [String] :queue
    #   Provide a queue name to get back only jobs from that queue.
    #
    # @option params [String] :status
    #   A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or
    #   ERROR.
    #
    # @return [Types::ListJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsResponse#jobs #jobs} => Array&lt;Types::Job&gt;
    #   * {Types::ListJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs({
    #     max_results: 1,
    #     next_token: "__string",
    #     order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     queue: "__string",
    #     status: "SUBMITTED", # accepts SUBMITTED, PROGRESSING, COMPLETE, CANCELED, ERROR
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].arn #=> String
    #   resp.jobs[0].created_at #=> Time
    #   resp.jobs[0].error_code #=> Integer
    #   resp.jobs[0].error_message #=> String
    #   resp.jobs[0].id #=> String
    #   resp.jobs[0].job_template #=> String
    #   resp.jobs[0].output_group_details #=> Array
    #   resp.jobs[0].output_group_details[0].output_details #=> Array
    #   resp.jobs[0].output_group_details[0].output_details[0].duration_in_ms #=> Integer
    #   resp.jobs[0].output_group_details[0].output_details[0].video_details.height_in_px #=> Integer
    #   resp.jobs[0].output_group_details[0].output_details[0].video_details.width_in_px #=> Integer
    #   resp.jobs[0].queue #=> String
    #   resp.jobs[0].role #=> String
    #   resp.jobs[0].settings.ad_avail_offset #=> Integer
    #   resp.jobs[0].settings.avail_blanking.avail_blanking_image #=> String
    #   resp.jobs[0].settings.inputs #=> Array
    #   resp.jobs[0].settings.inputs[0].audio_selector_groups #=> Hash
    #   resp.jobs[0].settings.inputs[0].audio_selector_groups["__string"].audio_selector_names #=> Array
    #   resp.jobs[0].settings.inputs[0].audio_selector_groups["__string"].audio_selector_names[0] #=> String
    #   resp.jobs[0].settings.inputs[0].audio_selectors #=> Hash
    #   resp.jobs[0].settings.inputs[0].audio_selectors["__string"].default_selection #=> String, one of "DEFAULT", "NOT_DEFAULT"
    #   resp.jobs[0].settings.inputs[0].audio_selectors["__string"].external_audio_file_input #=> String
    #   resp.jobs[0].settings.inputs[0].audio_selectors["__string"].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.jobs[0].settings.inputs[0].audio_selectors["__string"].offset #=> Integer
    #   resp.jobs[0].settings.inputs[0].audio_selectors["__string"].pids #=> Array
    #   resp.jobs[0].settings.inputs[0].audio_selectors["__string"].pids[0] #=> Integer
    #   resp.jobs[0].settings.inputs[0].audio_selectors["__string"].program_selection #=> Integer
    #   resp.jobs[0].settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.jobs[0].settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.jobs[0].settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.jobs[0].settings.inputs[0].audio_selectors["__string"].remix_settings.channels_in #=> Integer
    #   resp.jobs[0].settings.inputs[0].audio_selectors["__string"].remix_settings.channels_out #=> Integer
    #   resp.jobs[0].settings.inputs[0].audio_selectors["__string"].selector_type #=> String, one of "PID", "TRACK", "LANGUAGE_CODE"
    #   resp.jobs[0].settings.inputs[0].audio_selectors["__string"].tracks #=> Array
    #   resp.jobs[0].settings.inputs[0].audio_selectors["__string"].tracks[0] #=> Integer
    #   resp.jobs[0].settings.inputs[0].caption_selectors #=> Hash
    #   resp.jobs[0].settings.inputs[0].caption_selectors["__string"].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.jobs[0].settings.inputs[0].caption_selectors["__string"].source_settings.ancillary_source_settings.source_ancillary_channel_number #=> Integer
    #   resp.jobs[0].settings.inputs[0].caption_selectors["__string"].source_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.jobs[0].settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "UPCONVERT", "DISABLED"
    #   resp.jobs[0].settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.jobs[0].settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.jobs[0].settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.convert_608_to_708 #=> String, one of "UPCONVERT", "DISABLED"
    #   resp.jobs[0].settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.source_file #=> String
    #   resp.jobs[0].settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.time_delta #=> Integer
    #   resp.jobs[0].settings.inputs[0].caption_selectors["__string"].source_settings.source_type #=> String, one of "ANCILLARY", "DVB_SUB", "EMBEDDED", "SCC", "TTML", "STL", "SRT", "TELETEXT", "NULL_SOURCE"
    #   resp.jobs[0].settings.inputs[0].caption_selectors["__string"].source_settings.teletext_source_settings.page_number #=> String
    #   resp.jobs[0].settings.inputs[0].deblock_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.jobs[0].settings.inputs[0].denoise_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.jobs[0].settings.inputs[0].file_input #=> String
    #   resp.jobs[0].settings.inputs[0].filter_enable #=> String, one of "AUTO", "DISABLE", "FORCE"
    #   resp.jobs[0].settings.inputs[0].filter_strength #=> Integer
    #   resp.jobs[0].settings.inputs[0].input_clippings #=> Array
    #   resp.jobs[0].settings.inputs[0].input_clippings[0].end_timecode #=> String
    #   resp.jobs[0].settings.inputs[0].input_clippings[0].start_timecode #=> String
    #   resp.jobs[0].settings.inputs[0].program_number #=> Integer
    #   resp.jobs[0].settings.inputs[0].psi_control #=> String, one of "IGNORE_PSI", "USE_PSI"
    #   resp.jobs[0].settings.inputs[0].timecode_source #=> String, one of "EMBEDDED", "ZEROBASED", "SPECIFIEDSTART"
    #   resp.jobs[0].settings.inputs[0].video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709", "HDR10", "HLG_2020"
    #   resp.jobs[0].settings.inputs[0].video_selector.color_space_usage #=> String, one of "FORCE", "FALLBACK"
    #   resp.jobs[0].settings.inputs[0].video_selector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.jobs[0].settings.inputs[0].video_selector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.jobs[0].settings.inputs[0].video_selector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.jobs[0].settings.inputs[0].video_selector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.jobs[0].settings.inputs[0].video_selector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.jobs[0].settings.inputs[0].video_selector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.jobs[0].settings.inputs[0].video_selector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.jobs[0].settings.inputs[0].video_selector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.jobs[0].settings.inputs[0].video_selector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.jobs[0].settings.inputs[0].video_selector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.jobs[0].settings.inputs[0].video_selector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.jobs[0].settings.inputs[0].video_selector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.jobs[0].settings.inputs[0].video_selector.pid #=> Integer
    #   resp.jobs[0].settings.inputs[0].video_selector.program_number #=> Integer
    #   resp.jobs[0].settings.nielsen_configuration.breakout_code #=> Integer
    #   resp.jobs[0].settings.nielsen_configuration.distributor_id #=> String
    #   resp.jobs[0].settings.output_groups #=> Array
    #   resp.jobs[0].settings.output_groups[0].custom_name #=> String
    #   resp.jobs[0].settings.output_groups[0].name #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.base_url #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.destination #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.fragment_length #=> Integer
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.hbbtv_compliance #=> String, one of "HBBTV_1_5", "NONE"
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.min_buffer_time #=> Integer
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.segment_control #=> String, one of "SINGLE_FILE", "SEGMENTED_FILES"
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.dash_iso_group_settings.segment_length #=> Integer
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.file_group_settings.destination #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers #=> Array
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers[0] #=> String, one of "ELEMENTAL", "ELEMENTAL_SCTE35"
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.base_url #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings #=> Array
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].caption_channel #=> Integer
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_description #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_setting #=> String, one of "INSERT", "OMIT", "NONE"
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.client_cache #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.codec_specification #=> String, one of "RFC_6381", "RFC_4281"
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.destination #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.directory_structure #=> String, one of "SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.constant_initialization_vector #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.encryption_method #=> String, one of "AES128", "SAMPLE_AES"
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.initialization_vector_in_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.key_format #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.key_format_versions #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.static_key_value #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.url #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.encryption.type #=> String, one of "SPEKE", "STATIC_KEY"
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.manifest_compression #=> String, one of "GZIP", "NONE"
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.manifest_duration_format #=> String, one of "FLOATING_POINT", "INTEGER"
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.min_segment_length #=> Integer
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.output_selection #=> String, one of "MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY"
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time_period #=> Integer
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.segment_control #=> String, one of "SINGLE_FILE", "SEGMENTED_FILES"
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.segment_length #=> Integer
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.segments_per_subdirectory #=> Integer
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.stream_inf_resolution #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.hls_group_settings.timestamp_delta_milliseconds #=> Integer
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.ms_smooth_group_settings.audio_deduplication #=> String, one of "COMBINE_DUPLICATE_STREAMS", "NONE"
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.ms_smooth_group_settings.destination #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.ms_smooth_group_settings.fragment_length #=> Integer
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.ms_smooth_group_settings.manifest_encoding #=> String, one of "UTF8", "UTF16"
    #   resp.jobs[0].settings.output_groups[0].output_group_settings.type #=> String, one of "HLS_GROUP_SETTINGS", "DASH_ISO_GROUP_SETTINGS", "FILE_GROUP_SETTINGS", "MS_SMOOTH_GROUP_SETTINGS"
    #   resp.jobs[0].settings.output_groups[0].outputs #=> Array
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions #=> Array
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_BS_1770_1", "ITU_BS_1770_2"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO", "MEASURE_ONLY"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.correction_gate_level #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.loudness_logging #=> String, one of "LOG", "DONT_LOG"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.peak_calculation #=> String, one of "TRUE_PEAK", "NONE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].audio_source_name #=> String
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].audio_type #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.audio_description_broadcaster_mix #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.codec_profile #=> String, one of "LC", "HEV1", "HEV2"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.specification #=> String, one of "MPEG2", "MPEG4"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "LOW", "MEDIUM_LOW", "MEDIUM_HIGH", "HIGH"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.sample_rate #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.bit_depth #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.channels #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.sample_rate #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.codec #=> String, one of "AAC", "MP2", "WAV", "AIFF", "AC3", "EAC3", "PASSTHROUGH"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_line #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_rf #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "WHEN_POSSIBLE", "NO_PASSTHROUGH"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "SHIFT_90_DEGREES", "NO_SHIFT"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.sample_rate #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "NOT_INDICATED", "LO_RO", "LT_RT", "DPL2"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.channels #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.channels #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].audio_descriptions[0].stream_name #=> String
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions #=> Array
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].caption_selector_name #=> String
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.background_opacity #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_opacity #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_resolution #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_size #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.outline_size #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_opacity #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_x_offset #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_y_offset #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.x_position #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.y_position #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.destination_type #=> String, one of "BURN_IN", "DVB_SUB", "EMBEDDED", "SCC", "SRT", "TELETEXT", "TTML", "WEBVTT"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.scc_destination_settings.framerate #=> String, one of "FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_29_97_DROPFRAME", "FRAMERATE_29_97_NON_DROPFRAME"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.teletext_destination_settings.page_number #=> String
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.ttml_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].caption_descriptions[0].language_description #=> String
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.container #=> String, one of "F4V", "ISMV", "M2TS", "M3U8", "MOV", "MP4", "MPD", "MXF", "RAW"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.f4v_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_buffer_model #=> String, one of "DVB", "ATSC"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_pids #=> Array
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_pids[0] #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.nit_interval #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.sdt_interval #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sub_pids #=> Array
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sub_pids[0] #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_tdt_settings.tdt_interval #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_teletext_pid #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.max_pcr_interval #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.min_ebp_interval #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pcr_pid #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pmt_pid #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.private_metadata_pid #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.program_number #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.rate_mode #=> String, one of "VBR", "CBR"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.scte_35_pid #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_markers #=> String, one of "NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP", "EBP_LEGACY"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.timed_metadata_pid #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m2ts_settings.video_pid #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_pids #=> Array
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_pids[0] #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pcr_pid #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pmt_pid #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.private_metadata_pid #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.program_number #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.scte_35_pid #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.timed_metadata_pid #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.video_pid #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.mov_settings.clap_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.mov_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.mov_settings.mpeg_2_four_cc_control #=> String, one of "XDCAM", "MPEG"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.mov_settings.padding_control #=> String, one of "OMNEON", "NONE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.mov_settings.reference #=> String, one of "SELF_CONTAINED", "EXTERNAL"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.mp_4_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.mp_4_settings.free_space_box #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.mp_4_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].container_settings.mp_4_settings.mp_4_major_brand #=> String
    #   resp.jobs[0].settings.output_groups[0].outputs[0].extension #=> String
    #   resp.jobs[0].settings.output_groups[0].outputs[0].name_modifier #=> String
    #   resp.jobs[0].settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_group_id #=> String
    #   resp.jobs[0].settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_rendition_sets #=> String
    #   resp.jobs[0].settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].output_settings.hls_settings.i_frame_only_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].output_settings.hls_settings.segment_modifier #=> String
    #   resp.jobs[0].settings.output_groups[0].outputs[0].preset #=> String
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.afd_signaling #=> String, one of "NONE", "AUTO", "FIXED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.anti_alias #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.codec #=> String, one of "FRAME_CAPTURE", "H_264", "H_265", "MPEG2", "PRORES"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.framerate_denominator #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.framerate_numerator #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.max_captures #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.quality #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.bitrate #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.codec_profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.field_encoding #=> String, one of "PAFF", "FORCE_FIELD"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_size #=> Float
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.hrd_buffer_size #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.number_reference_frames #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.repeat_pps #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.slices #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.softness #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.alternate_transfer_function_sei #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.bitrate #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1", "LEVEL_6_2"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.codec_profile #=> String, one of "MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN", "MAIN_422_10BIT_HIGH"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_size #=> Float
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.hrd_buffer_size #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.number_reference_frames #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.sample_adaptive_offset_filter_mode #=> String, one of "DEFAULT", "ADAPTIVE", "OFF"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.slices #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.temporal_ids #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.tiles #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.bitrate #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.codec_level #=> String, one of "AUTO", "LOW", "MAIN", "HIGH1440", "HIGH"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.codec_profile #=> String, one of "MAIN", "PROFILE_422"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.hrd_buffer_size #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.intra_dc_precision #=> String, one of "AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10", "INTRA_DC_PRECISION_11"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.max_bitrate #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.min_i_interval #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_denominator #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_numerator #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "MULTI_PASS"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.softness #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.syntax #=> String, one of "DEFAULT", "D_10"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.codec_profile #=> String, one of "APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT", "APPLE_PRORES_422_PROXY"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_denominator #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_numerator #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_denominator #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_numerator #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.crop.height #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.crop.width #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.crop.x #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.crop.y #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.drop_frame_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.fixed_afd #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.height #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.position.height #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.position.width #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.position.x #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.position.y #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.respond_to_afd #=> String, one of "NONE", "RESPOND", "PASSTHROUGH"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.sharpness #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.brightness #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.color_space_conversion #=> String, one of "NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10", "FORCE_HLG_2020"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.contrast #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hue #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.saturation #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.algorithm #=> String, one of "INTERPOLATE", "INTERPOLATE_TICKER", "BLEND", "BLEND_TICKER"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.control #=> String, one of "FORCE_ALL_FRAMES", "NORMAL"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.mode #=> String, one of "DEINTERLACE", "INVERSE_TELECINE", "ADAPTIVE"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images #=> Array
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].duration #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].fade_in #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].fade_out #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].height #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_inserter_input #=> String
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_x #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_y #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].layer #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].opacity #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].start_time #=> String
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].width #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.filter #=> String, one of "BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE", "SPATIAL"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.filter_settings.strength #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.post_filter_sharpen_strength #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.speed #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.strength #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.font_size #=> Integer
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.position #=> String, one of "TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER", "BOTTOM_RIGHT"
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.prefix #=> String
    #   resp.jobs[0].settings.output_groups[0].outputs[0].video_description.width #=> Integer
    #   resp.jobs[0].settings.timecode_config.anchor #=> String
    #   resp.jobs[0].settings.timecode_config.source #=> String, one of "EMBEDDED", "ZEROBASED", "SPECIFIEDSTART"
    #   resp.jobs[0].settings.timecode_config.start #=> String
    #   resp.jobs[0].settings.timecode_config.timestamp_offset #=> String
    #   resp.jobs[0].settings.timed_metadata_insertion.id_3_insertions #=> Array
    #   resp.jobs[0].settings.timed_metadata_insertion.id_3_insertions[0].id_3 #=> String
    #   resp.jobs[0].settings.timed_metadata_insertion.id_3_insertions[0].timecode #=> String
    #   resp.jobs[0].status #=> String, one of "SUBMITTED", "PROGRESSING", "COMPLETE", "CANCELED", "ERROR"
    #   resp.jobs[0].timing.finish_time #=> Time
    #   resp.jobs[0].timing.start_time #=> Time
    #   resp.jobs[0].timing.submit_time #=> Time
    #   resp.jobs[0].user_metadata #=> Hash
    #   resp.jobs[0].user_metadata["__string"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListJobs AWS API Documentation
    #
    # @overload list_jobs(params = {})
    # @param [Hash] params ({})
    def list_jobs(params = {}, options = {})
      req = build_request(:list_jobs, params)
      req.send_request(options)
    end

    # Retrieve a JSON array of up to twenty of your presets. This will
    # return the presets themselves, not just a list of them. To retrieve
    # the next twenty presets, use the nextToken string returned with the
    # array.
    #
    # @option params [String] :category
    #   Optionally, specify a preset category to limit responses to only
    #   presets from that category.
    #
    # @option params [String] :list_by
    #   Optional. When you request a list of presets, you can choose to list
    #   them alphabetically by NAME or chronologically by CREATION\_DATE. If
    #   you don't specify, the service will list them by name.
    #
    # @option params [Integer] :max_results
    #   Optional. Number of presets, up to twenty, that will be returned at
    #   one time
    #
    # @option params [String] :next_token
    #   Use this string, provided with the response to a previous request, to
    #   request the next batch of presets.
    #
    # @option params [String] :order
    #   When you request lists of resources, you can optionally specify
    #   whether they are sorted in ASCENDING or DESCENDING order. Default
    #   varies by resource.
    #
    # @return [Types::ListPresetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPresetsResponse#next_token #next_token} => String
    #   * {Types::ListPresetsResponse#presets #presets} => Array&lt;Types::Preset&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_presets({
    #     category: "__string",
    #     list_by: "NAME", # accepts NAME, CREATION_DATE, SYSTEM
    #     max_results: 1,
    #     next_token: "__string",
    #     order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.presets #=> Array
    #   resp.presets[0].arn #=> String
    #   resp.presets[0].category #=> String
    #   resp.presets[0].created_at #=> Time
    #   resp.presets[0].description #=> String
    #   resp.presets[0].last_updated #=> Time
    #   resp.presets[0].name #=> String
    #   resp.presets[0].settings.audio_descriptions #=> Array
    #   resp.presets[0].settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_BS_1770_1", "ITU_BS_1770_2"
    #   resp.presets[0].settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO", "MEASURE_ONLY"
    #   resp.presets[0].settings.audio_descriptions[0].audio_normalization_settings.correction_gate_level #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].audio_normalization_settings.loudness_logging #=> String, one of "LOG", "DONT_LOG"
    #   resp.presets[0].settings.audio_descriptions[0].audio_normalization_settings.peak_calculation #=> String, one of "TRUE_PEAK", "NONE"
    #   resp.presets[0].settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.presets[0].settings.audio_descriptions[0].audio_source_name #=> String
    #   resp.presets[0].settings.audio_descriptions[0].audio_type #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.audio_description_broadcaster_mix #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.codec_profile #=> String, one of "LC", "HEV1", "HEV2"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.specification #=> String, one of "MPEG2", "MPEG4"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "LOW", "MEDIUM_LOW", "MEDIUM_HIGH", "HIGH"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.ac_3_settings.sample_rate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aiff_settings.bit_depth #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aiff_settings.channels #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.aiff_settings.sample_rate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.codec #=> String, one of "AAC", "MP2", "WAV", "AIFF", "AC3", "EAC3", "PASSTHROUGH"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_line #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_rf #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "WHEN_POSSIBLE", "NO_PASSTHROUGH"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "SHIFT_90_DEGREES", "NO_SHIFT"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.sample_rate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "NOT_INDICATED", "LO_RO", "LT_RT", "DPL2"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.mp_2_settings.channels #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.wav_settings.channels #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.presets[0].settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.presets[0].settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.presets[0].settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.presets[0].settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.presets[0].settings.audio_descriptions[0].stream_name #=> String
    #   resp.presets[0].settings.caption_descriptions #=> Array
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.background_opacity #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_opacity #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_resolution #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_size #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.outline_size #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_opacity #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_x_offset #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_y_offset #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.x_position #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.burnin_destination_settings.y_position #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.destination_type #=> String, one of "BURN_IN", "DVB_SUB", "EMBEDDED", "SCC", "SRT", "TELETEXT", "TTML", "WEBVTT"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.scc_destination_settings.framerate #=> String, one of "FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_29_97_DROPFRAME", "FRAMERATE_29_97_NON_DROPFRAME"
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.teletext_destination_settings.page_number #=> String
    #   resp.presets[0].settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.presets[0].settings.caption_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.presets[0].settings.caption_descriptions[0].language_description #=> String
    #   resp.presets[0].settings.container_settings.container #=> String, one of "F4V", "ISMV", "M2TS", "M3U8", "MOV", "MP4", "MPD", "MXF", "RAW"
    #   resp.presets[0].settings.container_settings.f4v_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.presets[0].settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "DVB", "ATSC"
    #   resp.presets[0].settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.audio_pids #=> Array
    #   resp.presets[0].settings.container_settings.m2ts_settings.audio_pids[0] #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_nit_settings.nit_interval #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_sdt_settings.sdt_interval #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_sub_pids #=> Array
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_sub_pids[0] #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_tdt_settings.tdt_interval #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.dvb_teletext_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.presets[0].settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.presets[0].settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.presets[0].settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.presets[0].settings.container_settings.m2ts_settings.max_pcr_interval #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.min_ebp_interval #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.presets[0].settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.presets[0].settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.presets[0].settings.container_settings.m2ts_settings.pcr_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.pmt_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.private_metadata_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.program_number #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.rate_mode #=> String, one of "VBR", "CBR"
    #   resp.presets[0].settings.container_settings.m2ts_settings.scte_35_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.presets[0].settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP", "EBP_LEGACY"
    #   resp.presets[0].settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.presets[0].settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.presets[0].settings.container_settings.m2ts_settings.timed_metadata_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.presets[0].settings.container_settings.m2ts_settings.video_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.audio_pids #=> Array
    #   resp.presets[0].settings.container_settings.m3u_8_settings.audio_pids[0] #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.presets[0].settings.container_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.presets[0].settings.container_settings.m3u_8_settings.pcr_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.pmt_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.private_metadata_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.program_number #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.scte_35_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.presets[0].settings.container_settings.m3u_8_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.presets[0].settings.container_settings.m3u_8_settings.timed_metadata_pid #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.presets[0].settings.container_settings.m3u_8_settings.video_pid #=> Integer
    #   resp.presets[0].settings.container_settings.mov_settings.clap_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.presets[0].settings.container_settings.mov_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.presets[0].settings.container_settings.mov_settings.mpeg_2_four_cc_control #=> String, one of "XDCAM", "MPEG"
    #   resp.presets[0].settings.container_settings.mov_settings.padding_control #=> String, one of "OMNEON", "NONE"
    #   resp.presets[0].settings.container_settings.mov_settings.reference #=> String, one of "SELF_CONTAINED", "EXTERNAL"
    #   resp.presets[0].settings.container_settings.mp_4_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.presets[0].settings.container_settings.mp_4_settings.free_space_box #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.presets[0].settings.container_settings.mp_4_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.presets[0].settings.container_settings.mp_4_settings.mp_4_major_brand #=> String
    #   resp.presets[0].settings.video_description.afd_signaling #=> String, one of "NONE", "AUTO", "FIXED"
    #   resp.presets[0].settings.video_description.anti_alias #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.codec #=> String, one of "FRAME_CAPTURE", "H_264", "H_265", "MPEG2", "PRORES"
    #   resp.presets[0].settings.video_description.codec_settings.frame_capture_settings.framerate_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.frame_capture_settings.framerate_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.frame_capture_settings.max_captures #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.frame_capture_settings.quality #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.bitrate #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.codec_profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.field_encoding #=> String, one of "PAFF", "FORCE_FIELD"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.gop_size #=> Float
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.hrd_buffer_size #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.number_reference_frames #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.repeat_pps #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.slices #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.softness #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h264_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.alternate_transfer_function_sei #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.bitrate #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1", "LEVEL_6_2"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.codec_profile #=> String, one of "MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN", "MAIN_422_10BIT_HIGH"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.gop_size #=> Float
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.hrd_buffer_size #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.number_reference_frames #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.sample_adaptive_offset_filter_mode #=> String, one of "DEFAULT", "ADAPTIVE", "OFF"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.slices #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.temporal_ids #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.tiles #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.h265_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.bitrate #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.codec_level #=> String, one of "AUTO", "LOW", "MAIN", "HIGH1440", "HIGH"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.codec_profile #=> String, one of "MAIN", "PROFILE_422"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.hrd_buffer_size #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.intra_dc_precision #=> String, one of "AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10", "INTRA_DC_PRECISION_11"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.max_bitrate #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.min_i_interval #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.par_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.par_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "MULTI_PASS"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.softness #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.syntax #=> String, one of "DEFAULT", "D_10"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.presets[0].settings.video_description.codec_settings.mpeg_2_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.codec_profile #=> String, one of "APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT", "APPLE_PRORES_422_PROXY"
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.framerate_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.framerate_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.par_denominator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.par_numerator #=> Integer
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.codec_settings.prores_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.presets[0].settings.video_description.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.presets[0].settings.video_description.crop.height #=> Integer
    #   resp.presets[0].settings.video_description.crop.width #=> Integer
    #   resp.presets[0].settings.video_description.crop.x #=> Integer
    #   resp.presets[0].settings.video_description.crop.y #=> Integer
    #   resp.presets[0].settings.video_description.drop_frame_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.presets[0].settings.video_description.fixed_afd #=> Integer
    #   resp.presets[0].settings.video_description.height #=> Integer
    #   resp.presets[0].settings.video_description.position.height #=> Integer
    #   resp.presets[0].settings.video_description.position.width #=> Integer
    #   resp.presets[0].settings.video_description.position.x #=> Integer
    #   resp.presets[0].settings.video_description.position.y #=> Integer
    #   resp.presets[0].settings.video_description.respond_to_afd #=> String, one of "NONE", "RESPOND", "PASSTHROUGH"
    #   resp.presets[0].settings.video_description.scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.presets[0].settings.video_description.sharpness #=> Integer
    #   resp.presets[0].settings.video_description.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.brightness #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.color_space_conversion #=> String, one of "NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10", "FORCE_HLG_2020"
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.contrast #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.hue #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.color_corrector.saturation #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.deinterlacer.algorithm #=> String, one of "INTERPOLATE", "INTERPOLATE_TICKER", "BLEND", "BLEND_TICKER"
    #   resp.presets[0].settings.video_description.video_preprocessors.deinterlacer.control #=> String, one of "FORCE_ALL_FRAMES", "NORMAL"
    #   resp.presets[0].settings.video_description.video_preprocessors.deinterlacer.mode #=> String, one of "DEINTERLACE", "INVERSE_TELECINE", "ADAPTIVE"
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images #=> Array
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].duration #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].fade_in #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].fade_out #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].height #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_inserter_input #=> String
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_x #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_y #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].layer #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].opacity #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].start_time #=> String
    #   resp.presets[0].settings.video_description.video_preprocessors.image_inserter.insertable_images[0].width #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.noise_reducer.filter #=> String, one of "BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE", "SPATIAL"
    #   resp.presets[0].settings.video_description.video_preprocessors.noise_reducer.filter_settings.strength #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.post_filter_sharpen_strength #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.speed #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.strength #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.timecode_burnin.font_size #=> Integer
    #   resp.presets[0].settings.video_description.video_preprocessors.timecode_burnin.position #=> String, one of "TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER", "BOTTOM_RIGHT"
    #   resp.presets[0].settings.video_description.video_preprocessors.timecode_burnin.prefix #=> String
    #   resp.presets[0].settings.video_description.width #=> Integer
    #   resp.presets[0].type #=> String, one of "SYSTEM", "CUSTOM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListPresets AWS API Documentation
    #
    # @overload list_presets(params = {})
    # @param [Hash] params ({})
    def list_presets(params = {}, options = {})
      req = build_request(:list_presets, params)
      req.send_request(options)
    end

    # Retrieve a JSON array of up to twenty of your queues. This will return
    # the queues themselves, not just a list of them. To retrieve the next
    # twenty queues, use the nextToken string returned with the array.
    #
    # @option params [String] :list_by
    #   Optional. When you request a list of queues, you can choose to list
    #   them alphabetically by NAME or chronologically by CREATION\_DATE. If
    #   you don't specify, the service will list them by creation date.
    #
    # @option params [Integer] :max_results
    #   Optional. Number of queues, up to twenty, that will be returned at one
    #   time.
    #
    # @option params [String] :next_token
    #   Use this string, provided with the response to a previous request, to
    #   request the next batch of queues.
    #
    # @option params [String] :order
    #   When you request lists of resources, you can optionally specify
    #   whether they are sorted in ASCENDING or DESCENDING order. Default
    #   varies by resource.
    #
    # @return [Types::ListQueuesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQueuesResponse#next_token #next_token} => String
    #   * {Types::ListQueuesResponse#queues #queues} => Array&lt;Types::Queue&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queues({
    #     list_by: "NAME", # accepts NAME, CREATION_DATE
    #     max_results: 1,
    #     next_token: "__string",
    #     order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.queues #=> Array
    #   resp.queues[0].arn #=> String
    #   resp.queues[0].created_at #=> Time
    #   resp.queues[0].description #=> String
    #   resp.queues[0].last_updated #=> Time
    #   resp.queues[0].name #=> String
    #   resp.queues[0].status #=> String, one of "ACTIVE", "PAUSED"
    #   resp.queues[0].type #=> String, one of "SYSTEM", "CUSTOM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/ListQueues AWS API Documentation
    #
    # @overload list_queues(params = {})
    # @param [Hash] params ({})
    def list_queues(params = {}, options = {})
      req = build_request(:list_queues, params)
      req.send_request(options)
    end

    # Modify one of your existing job templates.
    #
    # @option params [String] :category
    #   The new category for the job template, if you are changing it.
    #
    # @option params [String] :description
    #   The new description for the job template, if you are changing it.
    #
    # @option params [required, String] :name
    #   The name of the job template you are modifying
    #
    # @option params [String] :queue
    #   The new queue for the job template, if you are changing it.
    #
    # @option params [Types::JobTemplateSettings] :settings
    #   JobTemplateSettings contains all the transcode settings saved in the
    #   template that will be applied to jobs created from it.
    #
    # @return [Types::UpdateJobTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateJobTemplateResponse#job_template #job_template} => Types::JobTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job_template({
    #     category: "__string",
    #     description: "__string",
    #     name: "__string", # required
    #     queue: "__string",
    #     settings: {
    #       ad_avail_offset: 1,
    #       avail_blanking: {
    #         avail_blanking_image: "__string",
    #       },
    #       inputs: [
    #         {
    #           audio_selector_groups: {
    #             "__string" => {
    #               audio_selector_names: ["__string"],
    #             },
    #           },
    #           audio_selectors: {
    #             "__string" => {
    #               default_selection: "DEFAULT", # accepts DEFAULT, NOT_DEFAULT
    #               external_audio_file_input: "__string",
    #               language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #               offset: 1,
    #               pids: [1],
    #               program_selection: 1,
    #               remix_settings: {
    #                 channel_mapping: {
    #                   output_channels: [
    #                     {
    #                       input_channels: [1],
    #                     },
    #                   ],
    #                 },
    #                 channels_in: 1,
    #                 channels_out: 1,
    #               },
    #               selector_type: "PID", # accepts PID, TRACK, LANGUAGE_CODE
    #               tracks: [1],
    #             },
    #           },
    #           caption_selectors: {
    #             "__string" => {
    #               language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #               source_settings: {
    #                 ancillary_source_settings: {
    #                   source_ancillary_channel_number: 1,
    #                 },
    #                 dvb_sub_source_settings: {
    #                   pid: 1,
    #                 },
    #                 embedded_source_settings: {
    #                   convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #                   source_608_channel_number: 1,
    #                   source_608_track_number: 1,
    #                 },
    #                 file_source_settings: {
    #                   convert_608_to_708: "UPCONVERT", # accepts UPCONVERT, DISABLED
    #                   source_file: "__string",
    #                   time_delta: 1,
    #                 },
    #                 source_type: "ANCILLARY", # accepts ANCILLARY, DVB_SUB, EMBEDDED, SCC, TTML, STL, SRT, TELETEXT, NULL_SOURCE
    #                 teletext_source_settings: {
    #                   page_number: "__string",
    #                 },
    #               },
    #             },
    #           },
    #           deblock_filter: "ENABLED", # accepts ENABLED, DISABLED
    #           denoise_filter: "ENABLED", # accepts ENABLED, DISABLED
    #           filter_enable: "AUTO", # accepts AUTO, DISABLE, FORCE
    #           filter_strength: 1,
    #           input_clippings: [
    #             {
    #               end_timecode: "__string",
    #               start_timecode: "__string",
    #             },
    #           ],
    #           program_number: 1,
    #           psi_control: "IGNORE_PSI", # accepts IGNORE_PSI, USE_PSI
    #           timecode_source: "EMBEDDED", # accepts EMBEDDED, ZEROBASED, SPECIFIEDSTART
    #           video_selector: {
    #             color_space: "FOLLOW", # accepts FOLLOW, REC_601, REC_709, HDR10, HLG_2020
    #             color_space_usage: "FORCE", # accepts FORCE, FALLBACK
    #             hdr_10_metadata: {
    #               blue_primary_x: 1,
    #               blue_primary_y: 1,
    #               green_primary_x: 1,
    #               green_primary_y: 1,
    #               max_content_light_level: 1,
    #               max_frame_average_light_level: 1,
    #               max_luminance: 1,
    #               min_luminance: 1,
    #               red_primary_x: 1,
    #               red_primary_y: 1,
    #               white_point_x: 1,
    #               white_point_y: 1,
    #             },
    #             pid: 1,
    #             program_number: 1,
    #           },
    #         },
    #       ],
    #       nielsen_configuration: {
    #         breakout_code: 1,
    #         distributor_id: "__string",
    #       },
    #       output_groups: [
    #         {
    #           custom_name: "__string",
    #           name: "__string",
    #           output_group_settings: {
    #             dash_iso_group_settings: {
    #               base_url: "__string",
    #               destination: "__string",
    #               encryption: {
    #                 speke_key_provider: {
    #                   resource_id: "__string",
    #                   system_ids: ["__string"],
    #                   url: "__string",
    #                 },
    #               },
    #               fragment_length: 1,
    #               hbbtv_compliance: "HBBTV_1_5", # accepts HBBTV_1_5, NONE
    #               min_buffer_time: 1,
    #               segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #               segment_length: 1,
    #             },
    #             file_group_settings: {
    #               destination: "__string",
    #             },
    #             hls_group_settings: {
    #               ad_markers: ["ELEMENTAL"], # accepts ELEMENTAL, ELEMENTAL_SCTE35
    #               base_url: "__string",
    #               caption_language_mappings: [
    #                 {
    #                   caption_channel: 1,
    #                   language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                   language_description: "__string",
    #                 },
    #               ],
    #               caption_language_setting: "INSERT", # accepts INSERT, OMIT, NONE
    #               client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #               codec_specification: "RFC_6381", # accepts RFC_6381, RFC_4281
    #               destination: "__string",
    #               directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #               encryption: {
    #                 constant_initialization_vector: "__string",
    #                 encryption_method: "AES128", # accepts AES128, SAMPLE_AES
    #                 initialization_vector_in_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                 speke_key_provider: {
    #                   resource_id: "__string",
    #                   system_ids: ["__string"],
    #                   url: "__string",
    #                 },
    #                 static_key_provider: {
    #                   key_format: "__string",
    #                   key_format_versions: "__string",
    #                   static_key_value: "__string",
    #                   url: "__string",
    #                 },
    #                 type: "SPEKE", # accepts SPEKE, STATIC_KEY
    #               },
    #               manifest_compression: "GZIP", # accepts GZIP, NONE
    #               manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #               min_segment_length: 1,
    #               output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY
    #               program_date_time: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #               program_date_time_period: 1,
    #               segment_control: "SINGLE_FILE", # accepts SINGLE_FILE, SEGMENTED_FILES
    #               segment_length: 1,
    #               segments_per_subdirectory: 1,
    #               stream_inf_resolution: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #               timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #               timed_metadata_id_3_period: 1,
    #               timestamp_delta_milliseconds: 1,
    #             },
    #             ms_smooth_group_settings: {
    #               audio_deduplication: "COMBINE_DUPLICATE_STREAMS", # accepts COMBINE_DUPLICATE_STREAMS, NONE
    #               destination: "__string",
    #               encryption: {
    #                 speke_key_provider: {
    #                   resource_id: "__string",
    #                   system_ids: ["__string"],
    #                   url: "__string",
    #                 },
    #               },
    #               fragment_length: 1,
    #               manifest_encoding: "UTF8", # accepts UTF8, UTF16
    #             },
    #             type: "HLS_GROUP_SETTINGS", # accepts HLS_GROUP_SETTINGS, DASH_ISO_GROUP_SETTINGS, FILE_GROUP_SETTINGS, MS_SMOOTH_GROUP_SETTINGS
    #           },
    #           outputs: [
    #             {
    #               audio_descriptions: [
    #                 {
    #                   audio_normalization_settings: {
    #                     algorithm: "ITU_BS_1770_1", # accepts ITU_BS_1770_1, ITU_BS_1770_2
    #                     algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO, MEASURE_ONLY
    #                     correction_gate_level: 1,
    #                     loudness_logging: "LOG", # accepts LOG, DONT_LOG
    #                     peak_calculation: "TRUE_PEAK", # accepts TRUE_PEAK, NONE
    #                     target_lkfs: 1.0,
    #                   },
    #                   audio_source_name: "__string",
    #                   audio_type: 1,
    #                   audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                   codec_settings: {
    #                     aac_settings: {
    #                       audio_description_broadcaster_mix: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #                       bitrate: 1,
    #                       codec_profile: "LC", # accepts LC, HEV1, HEV2
    #                       coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #                       rate_control_mode: "CBR", # accepts CBR, VBR
    #                       raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #                       sample_rate: 1,
    #                       specification: "MPEG2", # accepts MPEG2, MPEG4
    #                       vbr_quality: "LOW", # accepts LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH
    #                     },
    #                     ac_3_settings: {
    #                       bitrate: 1,
    #                       bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #                       coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #                       dialnorm: 1,
    #                       dynamic_range_compression_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #                       lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                       metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                       sample_rate: 1,
    #                     },
    #                     aiff_settings: {
    #                       bit_depth: 1,
    #                       channels: 1,
    #                       sample_rate: 1,
    #                     },
    #                     codec: "AAC", # accepts AAC, MP2, WAV, AIFF, AC3, EAC3, PASSTHROUGH
    #                     eac_3_settings: {
    #                       attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #                       bitrate: 1,
    #                       bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #                       coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #                       dc_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                       dialnorm: 1,
    #                       dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                       dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #                       lfe_control: "LFE", # accepts LFE, NO_LFE
    #                       lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #                       lo_ro_center_mix_level: 1.0,
    #                       lo_ro_surround_mix_level: 1.0,
    #                       lt_rt_center_mix_level: 1.0,
    #                       lt_rt_surround_mix_level: 1.0,
    #                       metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                       passthrough_control: "WHEN_POSSIBLE", # accepts WHEN_POSSIBLE, NO_PASSTHROUGH
    #                       phase_control: "SHIFT_90_DEGREES", # accepts SHIFT_90_DEGREES, NO_SHIFT
    #                       sample_rate: 1,
    #                       stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, LO_RO, LT_RT, DPL2
    #                       surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                       surround_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #                     },
    #                     mp_2_settings: {
    #                       bitrate: 1,
    #                       channels: 1,
    #                       sample_rate: 1,
    #                     },
    #                     wav_settings: {
    #                       bit_depth: 1,
    #                       channels: 1,
    #                       sample_rate: 1,
    #                     },
    #                   },
    #                   language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                   language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #                   remix_settings: {
    #                     channel_mapping: {
    #                       output_channels: [
    #                         {
    #                           input_channels: [1],
    #                         },
    #                       ],
    #                     },
    #                     channels_in: 1,
    #                     channels_out: 1,
    #                   },
    #                   stream_name: "__string",
    #                 },
    #               ],
    #               caption_descriptions: [
    #                 {
    #                   caption_selector_name: "__string",
    #                   destination_settings: {
    #                     burnin_destination_settings: {
    #                       alignment: "CENTERED", # accepts CENTERED, LEFT
    #                       background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                       background_opacity: 1,
    #                       font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                       font_opacity: 1,
    #                       font_resolution: 1,
    #                       font_size: 1,
    #                       outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                       outline_size: 1,
    #                       shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                       shadow_opacity: 1,
    #                       shadow_x_offset: 1,
    #                       shadow_y_offset: 1,
    #                       teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                       x_position: 1,
    #                       y_position: 1,
    #                     },
    #                     destination_type: "BURN_IN", # accepts BURN_IN, DVB_SUB, EMBEDDED, SCC, SRT, TELETEXT, TTML, WEBVTT
    #                     dvb_sub_destination_settings: {
    #                       alignment: "CENTERED", # accepts CENTERED, LEFT
    #                       background_color: "NONE", # accepts NONE, BLACK, WHITE
    #                       background_opacity: 1,
    #                       font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #                       font_opacity: 1,
    #                       font_resolution: 1,
    #                       font_size: 1,
    #                       outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #                       outline_size: 1,
    #                       shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #                       shadow_opacity: 1,
    #                       shadow_x_offset: 1,
    #                       shadow_y_offset: 1,
    #                       teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #                       x_position: 1,
    #                       y_position: 1,
    #                     },
    #                     scc_destination_settings: {
    #                       framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #                     },
    #                     teletext_destination_settings: {
    #                       page_number: "__string",
    #                     },
    #                     ttml_destination_settings: {
    #                       style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #                     },
    #                   },
    #                   language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #                   language_description: "__string",
    #                 },
    #               ],
    #               container_settings: {
    #                 container: "F4V", # accepts F4V, ISMV, M2TS, M3U8, MOV, MP4, MPD, MXF, RAW
    #                 f4v_settings: {
    #                   moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #                 },
    #                 m2ts_settings: {
    #                   audio_buffer_model: "DVB", # accepts DVB, ATSC
    #                   audio_frames_per_pes: 1,
    #                   audio_pids: [1],
    #                   bitrate: 1,
    #                   buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                   dvb_nit_settings: {
    #                     network_id: 1,
    #                     network_name: "__string",
    #                     nit_interval: 1,
    #                   },
    #                   dvb_sdt_settings: {
    #                     output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                     sdt_interval: 1,
    #                     service_name: "__string",
    #                     service_provider_name: "__string",
    #                   },
    #                   dvb_sub_pids: [1],
    #                   dvb_tdt_settings: {
    #                     tdt_interval: 1,
    #                   },
    #                   dvb_teletext_pid: 1,
    #                   ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                   ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                   es_rate_in_pes: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   fragment_time: 1.0,
    #                   max_pcr_interval: 1,
    #                   min_ebp_interval: 1,
    #                   nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #                   null_packet_bitrate: 1.0,
    #                   pat_interval: 1,
    #                   pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #                   pcr_pid: 1,
    #                   pmt_interval: 1,
    #                   pmt_pid: 1,
    #                   private_metadata_pid: 1,
    #                   program_number: 1,
    #                   rate_mode: "VBR", # accepts VBR, CBR
    #                   scte_35_pid: 1,
    #                   scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                   segmentation_markers: "NONE", # accepts NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY
    #                   segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                   segmentation_time: 1.0,
    #                   timed_metadata_pid: 1,
    #                   transport_stream_id: 1,
    #                   video_pid: 1,
    #                 },
    #                 m3u_8_settings: {
    #                   audio_frames_per_pes: 1,
    #                   audio_pids: [1],
    #                   nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #                   pat_interval: 1,
    #                   pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #                   pcr_pid: 1,
    #                   pmt_interval: 1,
    #                   pmt_pid: 1,
    #                   private_metadata_pid: 1,
    #                   program_number: 1,
    #                   scte_35_pid: 1,
    #                   scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                   timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #                   timed_metadata_pid: 1,
    #                   transport_stream_id: 1,
    #                   video_pid: 1,
    #                 },
    #                 mov_settings: {
    #                   clap_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   mpeg_2_four_cc_control: "XDCAM", # accepts XDCAM, MPEG
    #                   padding_control: "OMNEON", # accepts OMNEON, NONE
    #                   reference: "SELF_CONTAINED", # accepts SELF_CONTAINED, EXTERNAL
    #                 },
    #                 mp_4_settings: {
    #                   cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   free_space_box: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #                   mp_4_major_brand: "__string",
    #                 },
    #               },
    #               extension: "__string",
    #               name_modifier: "__string",
    #               output_settings: {
    #                 hls_settings: {
    #                   audio_group_id: "__string",
    #                   audio_rendition_sets: "__string",
    #                   audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", # accepts ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #                   i_frame_only_manifest: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #                   segment_modifier: "__string",
    #                 },
    #               },
    #               preset: "__string",
    #               video_description: {
    #                 afd_signaling: "NONE", # accepts NONE, AUTO, FIXED
    #                 anti_alias: "DISABLED", # accepts DISABLED, ENABLED
    #                 codec_settings: {
    #                   codec: "FRAME_CAPTURE", # accepts FRAME_CAPTURE, H_264, H_265, MPEG2, PRORES
    #                   frame_capture_settings: {
    #                     framerate_denominator: 1,
    #                     framerate_numerator: 1,
    #                     max_captures: 1,
    #                     quality: 1,
    #                   },
    #                   h264_settings: {
    #                     adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                     bitrate: 1,
    #                     codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2
    #                     codec_profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #                     entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #                     field_encoding: "PAFF", # accepts PAFF, FORCE_FIELD
    #                     flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                     framerate_denominator: 1,
    #                     framerate_numerator: 1,
    #                     gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                     gop_closed_cadence: 1,
    #                     gop_size: 1.0,
    #                     gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                     hrd_buffer_initial_fill_percentage: 1,
    #                     hrd_buffer_size: 1,
    #                     interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                     max_bitrate: 1,
    #                     min_i_interval: 1,
    #                     number_b_frames_between_reference_frames: 1,
    #                     number_reference_frames: 1,
    #                     par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     par_denominator: 1,
    #                     par_numerator: 1,
    #                     quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                     rate_control_mode: "VBR", # accepts VBR, CBR
    #                     repeat_pps: "DISABLED", # accepts DISABLED, ENABLED
    #                     scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                     slices: 1,
    #                     slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                     softness: 1,
    #                     spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #                     telecine: "NONE", # accepts NONE, SOFT, HARD
    #                     temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                   },
    #                   h265_settings: {
    #                     adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #                     alternate_transfer_function_sei: "DISABLED", # accepts DISABLED, ENABLED
    #                     bitrate: 1,
    #                     codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2
    #                     codec_profile: "MAIN_MAIN", # accepts MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH
    #                     flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                     framerate_denominator: 1,
    #                     framerate_numerator: 1,
    #                     gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #                     gop_closed_cadence: 1,
    #                     gop_size: 1.0,
    #                     gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                     hrd_buffer_initial_fill_percentage: 1,
    #                     hrd_buffer_size: 1,
    #                     interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                     max_bitrate: 1,
    #                     min_i_interval: 1,
    #                     number_b_frames_between_reference_frames: 1,
    #                     number_reference_frames: 1,
    #                     par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     par_denominator: 1,
    #                     par_numerator: 1,
    #                     quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #                     rate_control_mode: "VBR", # accepts VBR, CBR
    #                     sample_adaptive_offset_filter_mode: "DEFAULT", # accepts DEFAULT, ADAPTIVE, OFF
    #                     scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                     slices: 1,
    #                     slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                     spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     telecine: "NONE", # accepts NONE, SOFT, HARD
    #                     temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     temporal_ids: "DISABLED", # accepts DISABLED, ENABLED
    #                     tiles: "DISABLED", # accepts DISABLED, ENABLED
    #                     unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                   },
    #                   mpeg_2_settings: {
    #                     adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH
    #                     bitrate: 1,
    #                     codec_level: "AUTO", # accepts AUTO, LOW, MAIN, HIGH1440, HIGH
    #                     codec_profile: "MAIN", # accepts MAIN, PROFILE_422
    #                     framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                     framerate_denominator: 1,
    #                     framerate_numerator: 1,
    #                     gop_closed_cadence: 1,
    #                     gop_size: 1.0,
    #                     gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #                     hrd_buffer_initial_fill_percentage: 1,
    #                     hrd_buffer_size: 1,
    #                     interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                     intra_dc_precision: "AUTO", # accepts AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11
    #                     max_bitrate: 1,
    #                     min_i_interval: 1,
    #                     number_b_frames_between_reference_frames: 1,
    #                     par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     par_denominator: 1,
    #                     par_numerator: 1,
    #                     quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #                     rate_control_mode: "VBR", # accepts VBR, CBR
    #                     scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #                     slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                     softness: 1,
    #                     spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                     syntax: "DEFAULT", # accepts DEFAULT, D_10
    #                     telecine: "NONE", # accepts NONE, SOFT, HARD
    #                     temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #                   },
    #                   prores_settings: {
    #                     codec_profile: "APPLE_PRORES_422", # accepts APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY
    #                     framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #                     framerate_denominator: 1,
    #                     framerate_numerator: 1,
    #                     interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #                     par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #                     par_denominator: 1,
    #                     par_numerator: 1,
    #                     slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #                     telecine: "NONE", # accepts NONE, HARD
    #                   },
    #                 },
    #                 color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #                 crop: {
    #                   height: 1,
    #                   width: 1,
    #                   x: 1,
    #                   y: 1,
    #                 },
    #                 drop_frame_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #                 fixed_afd: 1,
    #                 height: 1,
    #                 position: {
    #                   height: 1,
    #                   width: 1,
    #                   x: 1,
    #                   y: 1,
    #                 },
    #                 respond_to_afd: "NONE", # accepts NONE, RESPOND, PASSTHROUGH
    #                 scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #                 sharpness: 1,
    #                 timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #                 video_preprocessors: {
    #                   color_corrector: {
    #                     brightness: 1,
    #                     color_space_conversion: "NONE", # accepts NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020
    #                     contrast: 1,
    #                     hdr_10_metadata: {
    #                       blue_primary_x: 1,
    #                       blue_primary_y: 1,
    #                       green_primary_x: 1,
    #                       green_primary_y: 1,
    #                       max_content_light_level: 1,
    #                       max_frame_average_light_level: 1,
    #                       max_luminance: 1,
    #                       min_luminance: 1,
    #                       red_primary_x: 1,
    #                       red_primary_y: 1,
    #                       white_point_x: 1,
    #                       white_point_y: 1,
    #                     },
    #                     hue: 1,
    #                     saturation: 1,
    #                   },
    #                   deinterlacer: {
    #                     algorithm: "INTERPOLATE", # accepts INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER
    #                     control: "FORCE_ALL_FRAMES", # accepts FORCE_ALL_FRAMES, NORMAL
    #                     mode: "DEINTERLACE", # accepts DEINTERLACE, INVERSE_TELECINE, ADAPTIVE
    #                   },
    #                   image_inserter: {
    #                     insertable_images: [
    #                       {
    #                         duration: 1,
    #                         fade_in: 1,
    #                         fade_out: 1,
    #                         height: 1,
    #                         image_inserter_input: "__string",
    #                         image_x: 1,
    #                         image_y: 1,
    #                         layer: 1,
    #                         opacity: 1,
    #                         start_time: "__string",
    #                         width: 1,
    #                       },
    #                     ],
    #                   },
    #                   noise_reducer: {
    #                     filter: "BILATERAL", # accepts BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL
    #                     filter_settings: {
    #                       strength: 1,
    #                     },
    #                     spatial_filter_settings: {
    #                       post_filter_sharpen_strength: 1,
    #                       speed: 1,
    #                       strength: 1,
    #                     },
    #                   },
    #                   timecode_burnin: {
    #                     font_size: 1,
    #                     position: "TOP_CENTER", # accepts TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
    #                     prefix: "__string",
    #                   },
    #                 },
    #                 width: 1,
    #               },
    #             },
    #           ],
    #         },
    #       ],
    #       timecode_config: {
    #         anchor: "__string",
    #         source: "EMBEDDED", # accepts EMBEDDED, ZEROBASED, SPECIFIEDSTART
    #         start: "__string",
    #         timestamp_offset: "__string",
    #       },
    #       timed_metadata_insertion: {
    #         id_3_insertions: [
    #           {
    #             id_3: "__string",
    #             timecode: "__string",
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_template.arn #=> String
    #   resp.job_template.category #=> String
    #   resp.job_template.created_at #=> Time
    #   resp.job_template.description #=> String
    #   resp.job_template.last_updated #=> Time
    #   resp.job_template.name #=> String
    #   resp.job_template.queue #=> String
    #   resp.job_template.settings.ad_avail_offset #=> Integer
    #   resp.job_template.settings.avail_blanking.avail_blanking_image #=> String
    #   resp.job_template.settings.inputs #=> Array
    #   resp.job_template.settings.inputs[0].audio_selector_groups #=> Hash
    #   resp.job_template.settings.inputs[0].audio_selector_groups["__string"].audio_selector_names #=> Array
    #   resp.job_template.settings.inputs[0].audio_selector_groups["__string"].audio_selector_names[0] #=> String
    #   resp.job_template.settings.inputs[0].audio_selectors #=> Hash
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].default_selection #=> String, one of "DEFAULT", "NOT_DEFAULT"
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].external_audio_file_input #=> String
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].offset #=> Integer
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].pids #=> Array
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].pids[0] #=> Integer
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].program_selection #=> Integer
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].remix_settings.channels_in #=> Integer
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].remix_settings.channels_out #=> Integer
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].selector_type #=> String, one of "PID", "TRACK", "LANGUAGE_CODE"
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].tracks #=> Array
    #   resp.job_template.settings.inputs[0].audio_selectors["__string"].tracks[0] #=> Integer
    #   resp.job_template.settings.inputs[0].caption_selectors #=> Hash
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.ancillary_source_settings.source_ancillary_channel_number #=> Integer
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "UPCONVERT", "DISABLED"
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.convert_608_to_708 #=> String, one of "UPCONVERT", "DISABLED"
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.source_file #=> String
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.file_source_settings.time_delta #=> Integer
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.source_type #=> String, one of "ANCILLARY", "DVB_SUB", "EMBEDDED", "SCC", "TTML", "STL", "SRT", "TELETEXT", "NULL_SOURCE"
    #   resp.job_template.settings.inputs[0].caption_selectors["__string"].source_settings.teletext_source_settings.page_number #=> String
    #   resp.job_template.settings.inputs[0].deblock_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_template.settings.inputs[0].denoise_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_template.settings.inputs[0].filter_enable #=> String, one of "AUTO", "DISABLE", "FORCE"
    #   resp.job_template.settings.inputs[0].filter_strength #=> Integer
    #   resp.job_template.settings.inputs[0].input_clippings #=> Array
    #   resp.job_template.settings.inputs[0].input_clippings[0].end_timecode #=> String
    #   resp.job_template.settings.inputs[0].input_clippings[0].start_timecode #=> String
    #   resp.job_template.settings.inputs[0].program_number #=> Integer
    #   resp.job_template.settings.inputs[0].psi_control #=> String, one of "IGNORE_PSI", "USE_PSI"
    #   resp.job_template.settings.inputs[0].timecode_source #=> String, one of "EMBEDDED", "ZEROBASED", "SPECIFIEDSTART"
    #   resp.job_template.settings.inputs[0].video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709", "HDR10", "HLG_2020"
    #   resp.job_template.settings.inputs[0].video_selector.color_space_usage #=> String, one of "FORCE", "FALLBACK"
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.pid #=> Integer
    #   resp.job_template.settings.inputs[0].video_selector.program_number #=> Integer
    #   resp.job_template.settings.nielsen_configuration.breakout_code #=> Integer
    #   resp.job_template.settings.nielsen_configuration.distributor_id #=> String
    #   resp.job_template.settings.output_groups #=> Array
    #   resp.job_template.settings.output_groups[0].custom_name #=> String
    #   resp.job_template.settings.output_groups[0].name #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.base_url #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.destination #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.fragment_length #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.hbbtv_compliance #=> String, one of "HBBTV_1_5", "NONE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.min_buffer_time #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.segment_control #=> String, one of "SINGLE_FILE", "SEGMENTED_FILES"
    #   resp.job_template.settings.output_groups[0].output_group_settings.dash_iso_group_settings.segment_length #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.file_group_settings.destination #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers #=> Array
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers[0] #=> String, one of "ELEMENTAL", "ELEMENTAL_SCTE35"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.base_url #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings #=> Array
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].caption_channel #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_description #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_setting #=> String, one of "INSERT", "OMIT", "NONE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.client_cache #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.codec_specification #=> String, one of "RFC_6381", "RFC_4281"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.destination #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.directory_structure #=> String, one of "SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.constant_initialization_vector #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.encryption_method #=> String, one of "AES128", "SAMPLE_AES"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.initialization_vector_in_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.key_format #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.key_format_versions #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.static_key_value #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.static_key_provider.url #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.encryption.type #=> String, one of "SPEKE", "STATIC_KEY"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.manifest_compression #=> String, one of "GZIP", "NONE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.manifest_duration_format #=> String, one of "FLOATING_POINT", "INTEGER"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.min_segment_length #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.output_selection #=> String, one of "MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time_period #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.segment_control #=> String, one of "SINGLE_FILE", "SEGMENTED_FILES"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.segment_length #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.segments_per_subdirectory #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.stream_inf_resolution #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.hls_group_settings.timestamp_delta_milliseconds #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.audio_deduplication #=> String, one of "COMBINE_DUPLICATE_STREAMS", "NONE"
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.destination #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.resource_id #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.system_ids #=> Array
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.encryption.speke_key_provider.url #=> String
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.fragment_length #=> Integer
    #   resp.job_template.settings.output_groups[0].output_group_settings.ms_smooth_group_settings.manifest_encoding #=> String, one of "UTF8", "UTF16"
    #   resp.job_template.settings.output_groups[0].output_group_settings.type #=> String, one of "HLS_GROUP_SETTINGS", "DASH_ISO_GROUP_SETTINGS", "FILE_GROUP_SETTINGS", "MS_SMOOTH_GROUP_SETTINGS"
    #   resp.job_template.settings.output_groups[0].outputs #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_BS_1770_1", "ITU_BS_1770_2"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO", "MEASURE_ONLY"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.correction_gate_level #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.loudness_logging #=> String, one of "LOG", "DONT_LOG"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.peak_calculation #=> String, one of "TRUE_PEAK", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_source_name #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_type #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.audio_description_broadcaster_mix #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.codec_profile #=> String, one of "LC", "HEV1", "HEV2"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.specification #=> String, one of "MPEG2", "MPEG4"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "LOW", "MEDIUM_LOW", "MEDIUM_HIGH", "HIGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.ac_3_settings.sample_rate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.bit_depth #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.channels #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.aiff_settings.sample_rate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.codec #=> String, one of "AAC", "MP2", "WAV", "AIFF", "AC3", "EAC3", "PASSTHROUGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_line #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_rf #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "WHEN_POSSIBLE", "NO_PASSTHROUGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "SHIFT_90_DEGREES", "NO_SHIFT"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.sample_rate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "NOT_INDICATED", "LO_RO", "LT_RT", "DPL2"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.channels #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.channels #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].audio_descriptions[0].stream_name #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].caption_selector_name #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.background_opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_resolution #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.font_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.outline_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_x_offset #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_y_offset #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.x_position #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.burnin_destination_settings.y_position #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.destination_type #=> String, one of "BURN_IN", "DVB_SUB", "EMBEDDED", "SCC", "SRT", "TELETEXT", "TTML", "WEBVTT"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.scc_destination_settings.framerate #=> String, one of "FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_29_97_DROPFRAME", "FRAMERATE_29_97_NON_DROPFRAME"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.teletext_destination_settings.page_number #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].destination_settings.ttml_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.job_template.settings.output_groups[0].outputs[0].caption_descriptions[0].language_description #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.container #=> String, one of "F4V", "ISMV", "M2TS", "M3U8", "MOV", "MP4", "MPD", "MXF", "RAW"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.f4v_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_buffer_model #=> String, one of "DVB", "ATSC"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_pids #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.audio_pids[0] #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_nit_settings.nit_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.sdt_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sub_pids #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_sub_pids[0] #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_tdt_settings.tdt_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.dvb_teletext_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.max_pcr_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.min_ebp_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pcr_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.pmt_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.private_metadata_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.program_number #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.rate_mode #=> String, one of "VBR", "CBR"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.scte_35_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_markers #=> String, one of "NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP", "EBP_LEGACY"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.timed_metadata_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m2ts_settings.video_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_pids #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.audio_pids[0] #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pcr_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.pmt_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.private_metadata_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.program_number #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.scte_35_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.timed_metadata_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.m3u_8_settings.video_pid #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mov_settings.clap_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mov_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mov_settings.mpeg_2_four_cc_control #=> String, one of "XDCAM", "MPEG"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mov_settings.padding_control #=> String, one of "OMNEON", "NONE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mov_settings.reference #=> String, one of "SELF_CONTAINED", "EXTERNAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mp_4_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mp_4_settings.free_space_box #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mp_4_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].container_settings.mp_4_settings.mp_4_major_brand #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].extension #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].name_modifier #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_group_id #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_rendition_sets #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].output_settings.hls_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.job_template.settings.output_groups[0].outputs[0].output_settings.hls_settings.i_frame_only_manifest #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.job_template.settings.output_groups[0].outputs[0].output_settings.hls_settings.segment_modifier #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].preset #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.afd_signaling #=> String, one of "NONE", "AUTO", "FIXED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.anti_alias #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.codec #=> String, one of "FRAME_CAPTURE", "H_264", "H_265", "MPEG2", "PRORES"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.framerate_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.framerate_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.max_captures #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.frame_capture_settings.quality #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.codec_profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.field_encoding #=> String, one of "PAFF", "FORCE_FIELD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_size #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.hrd_buffer_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.number_reference_frames #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.repeat_pps #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.slices #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.softness #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h264_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.alternate_transfer_function_sei #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1", "LEVEL_6_2"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.codec_profile #=> String, one of "MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN", "MAIN_422_10BIT_HIGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_size #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.hrd_buffer_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.number_reference_frames #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.sample_adaptive_offset_filter_mode #=> String, one of "DEFAULT", "ADAPTIVE", "OFF"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.slices #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.temporal_ids #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.tiles #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.h265_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.codec_level #=> String, one of "AUTO", "LOW", "MAIN", "HIGH1440", "HIGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.codec_profile #=> String, one of "MAIN", "PROFILE_422"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.hrd_buffer_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.intra_dc_precision #=> String, one of "AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10", "INTRA_DC_PRECISION_11"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.max_bitrate #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.min_i_interval #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.par_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "MULTI_PASS"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.softness #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.syntax #=> String, one of "DEFAULT", "D_10"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.mpeg_2_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.codec_profile #=> String, one of "APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT", "APPLE_PRORES_422_PROXY"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.framerate_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_denominator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.par_numerator #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.codec_settings.prores_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.crop.height #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.crop.width #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.crop.x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.crop.y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.drop_frame_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.fixed_afd #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.height #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.position.height #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.position.width #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.position.x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.position.y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.respond_to_afd #=> String, one of "NONE", "RESPOND", "PASSTHROUGH"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.sharpness #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.brightness #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.color_space_conversion #=> String, one of "NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10", "FORCE_HLG_2020"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.contrast #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.hue #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.color_corrector.saturation #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.algorithm #=> String, one of "INTERPOLATE", "INTERPOLATE_TICKER", "BLEND", "BLEND_TICKER"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.control #=> String, one of "FORCE_ALL_FRAMES", "NORMAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.deinterlacer.mode #=> String, one of "DEINTERLACE", "INVERSE_TELECINE", "ADAPTIVE"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images #=> Array
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].duration #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].fade_in #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].fade_out #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].height #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_inserter_input #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_x #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].image_y #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].layer #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].opacity #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].start_time #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.image_inserter.insertable_images[0].width #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.filter #=> String, one of "BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE", "SPATIAL"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.filter_settings.strength #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.post_filter_sharpen_strength #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.speed #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.noise_reducer.spatial_filter_settings.strength #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.font_size #=> Integer
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.position #=> String, one of "TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER", "BOTTOM_RIGHT"
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.video_preprocessors.timecode_burnin.prefix #=> String
    #   resp.job_template.settings.output_groups[0].outputs[0].video_description.width #=> Integer
    #   resp.job_template.settings.timecode_config.anchor #=> String
    #   resp.job_template.settings.timecode_config.source #=> String, one of "EMBEDDED", "ZEROBASED", "SPECIFIEDSTART"
    #   resp.job_template.settings.timecode_config.start #=> String
    #   resp.job_template.settings.timecode_config.timestamp_offset #=> String
    #   resp.job_template.settings.timed_metadata_insertion.id_3_insertions #=> Array
    #   resp.job_template.settings.timed_metadata_insertion.id_3_insertions[0].id_3 #=> String
    #   resp.job_template.settings.timed_metadata_insertion.id_3_insertions[0].timecode #=> String
    #   resp.job_template.type #=> String, one of "SYSTEM", "CUSTOM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/UpdateJobTemplate AWS API Documentation
    #
    # @overload update_job_template(params = {})
    # @param [Hash] params ({})
    def update_job_template(params = {}, options = {})
      req = build_request(:update_job_template, params)
      req.send_request(options)
    end

    # Modify one of your existing presets.
    #
    # @option params [String] :category
    #   The new category for the preset, if you are changing it.
    #
    # @option params [String] :description
    #   The new description for the preset, if you are changing it.
    #
    # @option params [required, String] :name
    #   The name of the preset you are modifying.
    #
    # @option params [Types::PresetSettings] :settings
    #   Settings for preset
    #
    # @return [Types::UpdatePresetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePresetResponse#preset #preset} => Types::Preset
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_preset({
    #     category: "__string",
    #     description: "__string",
    #     name: "__string", # required
    #     settings: {
    #       audio_descriptions: [
    #         {
    #           audio_normalization_settings: {
    #             algorithm: "ITU_BS_1770_1", # accepts ITU_BS_1770_1, ITU_BS_1770_2
    #             algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO, MEASURE_ONLY
    #             correction_gate_level: 1,
    #             loudness_logging: "LOG", # accepts LOG, DONT_LOG
    #             peak_calculation: "TRUE_PEAK", # accepts TRUE_PEAK, NONE
    #             target_lkfs: 1.0,
    #           },
    #           audio_source_name: "__string",
    #           audio_type: 1,
    #           audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #           codec_settings: {
    #             aac_settings: {
    #               audio_description_broadcaster_mix: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #               bitrate: 1,
    #               codec_profile: "LC", # accepts LC, HEV1, HEV2
    #               coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #               rate_control_mode: "CBR", # accepts CBR, VBR
    #               raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #               sample_rate: 1,
    #               specification: "MPEG2", # accepts MPEG2, MPEG4
    #               vbr_quality: "LOW", # accepts LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH
    #             },
    #             ac_3_settings: {
    #               bitrate: 1,
    #               bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #               dialnorm: 1,
    #               dynamic_range_compression_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #               lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #               metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               sample_rate: 1,
    #             },
    #             aiff_settings: {
    #               bit_depth: 1,
    #               channels: 1,
    #               sample_rate: 1,
    #             },
    #             codec: "AAC", # accepts AAC, MP2, WAV, AIFF, AC3, EAC3, PASSTHROUGH
    #             eac_3_settings: {
    #               attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #               bitrate: 1,
    #               bitstream_mode: "COMPLETE_MAIN", # accepts COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #               dc_filter: "ENABLED", # accepts ENABLED, DISABLED
    #               dialnorm: 1,
    #               dynamic_range_compression_line: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #               dynamic_range_compression_rf: "NONE", # accepts NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH
    #               lfe_control: "LFE", # accepts LFE, NO_LFE
    #               lfe_filter: "ENABLED", # accepts ENABLED, DISABLED
    #               lo_ro_center_mix_level: 1.0,
    #               lo_ro_surround_mix_level: 1.0,
    #               lt_rt_center_mix_level: 1.0,
    #               lt_rt_surround_mix_level: 1.0,
    #               metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               passthrough_control: "WHEN_POSSIBLE", # accepts WHEN_POSSIBLE, NO_PASSTHROUGH
    #               phase_control: "SHIFT_90_DEGREES", # accepts SHIFT_90_DEGREES, NO_SHIFT
    #               sample_rate: 1,
    #               stereo_downmix: "NOT_INDICATED", # accepts NOT_INDICATED, LO_RO, LT_RT, DPL2
    #               surround_ex_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #               surround_mode: "NOT_INDICATED", # accepts NOT_INDICATED, ENABLED, DISABLED
    #             },
    #             mp_2_settings: {
    #               bitrate: 1,
    #               channels: 1,
    #               sample_rate: 1,
    #             },
    #             wav_settings: {
    #               bit_depth: 1,
    #               channels: 1,
    #               sample_rate: 1,
    #             },
    #           },
    #           language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #           language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #           remix_settings: {
    #             channel_mapping: {
    #               output_channels: [
    #                 {
    #                   input_channels: [1],
    #                 },
    #               ],
    #             },
    #             channels_in: 1,
    #             channels_out: 1,
    #           },
    #           stream_name: "__string",
    #         },
    #       ],
    #       caption_descriptions: [
    #         {
    #           destination_settings: {
    #             burnin_destination_settings: {
    #               alignment: "CENTERED", # accepts CENTERED, LEFT
    #               background_color: "NONE", # accepts NONE, BLACK, WHITE
    #               background_opacity: 1,
    #               font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #               font_opacity: 1,
    #               font_resolution: 1,
    #               font_size: 1,
    #               outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #               outline_size: 1,
    #               shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #               shadow_opacity: 1,
    #               shadow_x_offset: 1,
    #               shadow_y_offset: 1,
    #               teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #               x_position: 1,
    #               y_position: 1,
    #             },
    #             destination_type: "BURN_IN", # accepts BURN_IN, DVB_SUB, EMBEDDED, SCC, SRT, TELETEXT, TTML, WEBVTT
    #             dvb_sub_destination_settings: {
    #               alignment: "CENTERED", # accepts CENTERED, LEFT
    #               background_color: "NONE", # accepts NONE, BLACK, WHITE
    #               background_opacity: 1,
    #               font_color: "WHITE", # accepts WHITE, BLACK, YELLOW, RED, GREEN, BLUE
    #               font_opacity: 1,
    #               font_resolution: 1,
    #               font_size: 1,
    #               outline_color: "BLACK", # accepts BLACK, WHITE, YELLOW, RED, GREEN, BLUE
    #               outline_size: 1,
    #               shadow_color: "NONE", # accepts NONE, BLACK, WHITE
    #               shadow_opacity: 1,
    #               shadow_x_offset: 1,
    #               shadow_y_offset: 1,
    #               teletext_spacing: "FIXED_GRID", # accepts FIXED_GRID, PROPORTIONAL
    #               x_position: 1,
    #               y_position: 1,
    #             },
    #             scc_destination_settings: {
    #               framerate: "FRAMERATE_23_97", # accepts FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME
    #             },
    #             teletext_destination_settings: {
    #               page_number: "__string",
    #             },
    #             ttml_destination_settings: {
    #               style_passthrough: "ENABLED", # accepts ENABLED, DISABLED
    #             },
    #           },
    #           language_code: "ENG", # accepts ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG
    #           language_description: "__string",
    #         },
    #       ],
    #       container_settings: {
    #         container: "F4V", # accepts F4V, ISMV, M2TS, M3U8, MOV, MP4, MPD, MXF, RAW
    #         f4v_settings: {
    #           moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #         },
    #         m2ts_settings: {
    #           audio_buffer_model: "DVB", # accepts DVB, ATSC
    #           audio_frames_per_pes: 1,
    #           audio_pids: [1],
    #           bitrate: 1,
    #           buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #           dvb_nit_settings: {
    #             network_id: 1,
    #             network_name: "__string",
    #             nit_interval: 1,
    #           },
    #           dvb_sdt_settings: {
    #             output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #             sdt_interval: 1,
    #             service_name: "__string",
    #             service_provider_name: "__string",
    #           },
    #           dvb_sub_pids: [1],
    #           dvb_tdt_settings: {
    #             tdt_interval: 1,
    #           },
    #           dvb_teletext_pid: 1,
    #           ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #           ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #           es_rate_in_pes: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           fragment_time: 1.0,
    #           max_pcr_interval: 1,
    #           min_ebp_interval: 1,
    #           nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #           null_packet_bitrate: 1.0,
    #           pat_interval: 1,
    #           pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #           pcr_pid: 1,
    #           pmt_interval: 1,
    #           pmt_pid: 1,
    #           private_metadata_pid: 1,
    #           program_number: 1,
    #           rate_mode: "VBR", # accepts VBR, CBR
    #           scte_35_pid: 1,
    #           scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           segmentation_markers: "NONE", # accepts NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY
    #           segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #           segmentation_time: 1.0,
    #           timed_metadata_pid: 1,
    #           transport_stream_id: 1,
    #           video_pid: 1,
    #         },
    #         m3u_8_settings: {
    #           audio_frames_per_pes: 1,
    #           audio_pids: [1],
    #           nielsen_id_3: "INSERT", # accepts INSERT, NONE
    #           pat_interval: 1,
    #           pcr_control: "PCR_EVERY_PES_PACKET", # accepts PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD
    #           pcr_pid: 1,
    #           pmt_interval: 1,
    #           pmt_pid: 1,
    #           private_metadata_pid: 1,
    #           program_number: 1,
    #           scte_35_pid: 1,
    #           scte_35_source: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           timed_metadata: "PASSTHROUGH", # accepts PASSTHROUGH, NONE
    #           timed_metadata_pid: 1,
    #           transport_stream_id: 1,
    #           video_pid: 1,
    #         },
    #         mov_settings: {
    #           clap_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           mpeg_2_four_cc_control: "XDCAM", # accepts XDCAM, MPEG
    #           padding_control: "OMNEON", # accepts OMNEON, NONE
    #           reference: "SELF_CONTAINED", # accepts SELF_CONTAINED, EXTERNAL
    #         },
    #         mp_4_settings: {
    #           cslg_atom: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           free_space_box: "INCLUDE", # accepts INCLUDE, EXCLUDE
    #           moov_placement: "PROGRESSIVE_DOWNLOAD", # accepts PROGRESSIVE_DOWNLOAD, NORMAL
    #           mp_4_major_brand: "__string",
    #         },
    #       },
    #       video_description: {
    #         afd_signaling: "NONE", # accepts NONE, AUTO, FIXED
    #         anti_alias: "DISABLED", # accepts DISABLED, ENABLED
    #         codec_settings: {
    #           codec: "FRAME_CAPTURE", # accepts FRAME_CAPTURE, H_264, H_265, MPEG2, PRORES
    #           frame_capture_settings: {
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             max_captures: 1,
    #             quality: 1,
    #           },
    #           h264_settings: {
    #             adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #             bitrate: 1,
    #             codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2
    #             codec_profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #             entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #             field_encoding: "PAFF", # accepts PAFF, FORCE_FIELD
    #             flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #             gop_closed_cadence: 1,
    #             gop_size: 1.0,
    #             gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #             hrd_buffer_initial_fill_percentage: 1,
    #             hrd_buffer_size: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             max_bitrate: 1,
    #             min_i_interval: 1,
    #             number_b_frames_between_reference_frames: 1,
    #             number_reference_frames: 1,
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #             rate_control_mode: "VBR", # accepts VBR, CBR
    #             repeat_pps: "DISABLED", # accepts DISABLED, ENABLED
    #             scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #             slices: 1,
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             softness: 1,
    #             spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #             telecine: "NONE", # accepts NONE, SOFT, HARD
    #             temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           h265_settings: {
    #             adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH, HIGHER, MAX
    #             alternate_transfer_function_sei: "DISABLED", # accepts DISABLED, ENABLED
    #             bitrate: 1,
    #             codec_level: "AUTO", # accepts AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2
    #             codec_profile: "MAIN_MAIN", # accepts MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH
    #             flicker_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #             gop_closed_cadence: 1,
    #             gop_size: 1.0,
    #             gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #             hrd_buffer_initial_fill_percentage: 1,
    #             hrd_buffer_size: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             max_bitrate: 1,
    #             min_i_interval: 1,
    #             number_b_frames_between_reference_frames: 1,
    #             number_reference_frames: 1,
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ
    #             rate_control_mode: "VBR", # accepts VBR, CBR
    #             sample_adaptive_offset_filter_mode: "DEFAULT", # accepts DEFAULT, ADAPTIVE, OFF
    #             scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #             slices: 1,
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             telecine: "NONE", # accepts NONE, SOFT, HARD
    #             temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             temporal_ids: "DISABLED", # accepts DISABLED, ENABLED
    #             tiles: "DISABLED", # accepts DISABLED, ENABLED
    #             unregistered_sei_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           mpeg_2_settings: {
    #             adaptive_quantization: "OFF", # accepts OFF, LOW, MEDIUM, HIGH
    #             bitrate: 1,
    #             codec_level: "AUTO", # accepts AUTO, LOW, MAIN, HIGH1440, HIGH
    #             codec_profile: "MAIN", # accepts MAIN, PROFILE_422
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             gop_closed_cadence: 1,
    #             gop_size: 1.0,
    #             gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #             hrd_buffer_initial_fill_percentage: 1,
    #             hrd_buffer_size: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             intra_dc_precision: "AUTO", # accepts AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11
    #             max_bitrate: 1,
    #             min_i_interval: 1,
    #             number_b_frames_between_reference_frames: 1,
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             quality_tuning_level: "SINGLE_PASS", # accepts SINGLE_PASS, MULTI_PASS
    #             rate_control_mode: "VBR", # accepts VBR, CBR
    #             scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             softness: 1,
    #             spatial_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #             syntax: "DEFAULT", # accepts DEFAULT, D_10
    #             telecine: "NONE", # accepts NONE, SOFT, HARD
    #             temporal_adaptive_quantization: "DISABLED", # accepts DISABLED, ENABLED
    #           },
    #           prores_settings: {
    #             codec_profile: "APPLE_PRORES_422", # accepts APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY
    #             framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             framerate_conversion_algorithm: "DUPLICATE_DROP", # accepts DUPLICATE_DROP, INTERPOLATE
    #             framerate_denominator: 1,
    #             framerate_numerator: 1,
    #             interlace_mode: "PROGRESSIVE", # accepts PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD
    #             par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #             par_denominator: 1,
    #             par_numerator: 1,
    #             slow_pal: "DISABLED", # accepts DISABLED, ENABLED
    #             telecine: "NONE", # accepts NONE, HARD
    #           },
    #         },
    #         color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #         crop: {
    #           height: 1,
    #           width: 1,
    #           x: 1,
    #           y: 1,
    #         },
    #         drop_frame_timecode: "DISABLED", # accepts DISABLED, ENABLED
    #         fixed_afd: 1,
    #         height: 1,
    #         position: {
    #           height: 1,
    #           width: 1,
    #           x: 1,
    #           y: 1,
    #         },
    #         respond_to_afd: "NONE", # accepts NONE, RESPOND, PASSTHROUGH
    #         scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #         sharpness: 1,
    #         timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #         video_preprocessors: {
    #           color_corrector: {
    #             brightness: 1,
    #             color_space_conversion: "NONE", # accepts NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020
    #             contrast: 1,
    #             hdr_10_metadata: {
    #               blue_primary_x: 1,
    #               blue_primary_y: 1,
    #               green_primary_x: 1,
    #               green_primary_y: 1,
    #               max_content_light_level: 1,
    #               max_frame_average_light_level: 1,
    #               max_luminance: 1,
    #               min_luminance: 1,
    #               red_primary_x: 1,
    #               red_primary_y: 1,
    #               white_point_x: 1,
    #               white_point_y: 1,
    #             },
    #             hue: 1,
    #             saturation: 1,
    #           },
    #           deinterlacer: {
    #             algorithm: "INTERPOLATE", # accepts INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER
    #             control: "FORCE_ALL_FRAMES", # accepts FORCE_ALL_FRAMES, NORMAL
    #             mode: "DEINTERLACE", # accepts DEINTERLACE, INVERSE_TELECINE, ADAPTIVE
    #           },
    #           image_inserter: {
    #             insertable_images: [
    #               {
    #                 duration: 1,
    #                 fade_in: 1,
    #                 fade_out: 1,
    #                 height: 1,
    #                 image_inserter_input: "__string",
    #                 image_x: 1,
    #                 image_y: 1,
    #                 layer: 1,
    #                 opacity: 1,
    #                 start_time: "__string",
    #                 width: 1,
    #               },
    #             ],
    #           },
    #           noise_reducer: {
    #             filter: "BILATERAL", # accepts BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL
    #             filter_settings: {
    #               strength: 1,
    #             },
    #             spatial_filter_settings: {
    #               post_filter_sharpen_strength: 1,
    #               speed: 1,
    #               strength: 1,
    #             },
    #           },
    #           timecode_burnin: {
    #             font_size: 1,
    #             position: "TOP_CENTER", # accepts TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT
    #             prefix: "__string",
    #           },
    #         },
    #         width: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.preset.arn #=> String
    #   resp.preset.category #=> String
    #   resp.preset.created_at #=> Time
    #   resp.preset.description #=> String
    #   resp.preset.last_updated #=> Time
    #   resp.preset.name #=> String
    #   resp.preset.settings.audio_descriptions #=> Array
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_BS_1770_1", "ITU_BS_1770_2"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO", "MEASURE_ONLY"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.correction_gate_level #=> Integer
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.loudness_logging #=> String, one of "LOG", "DONT_LOG"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.peak_calculation #=> String, one of "TRUE_PEAK", "NONE"
    #   resp.preset.settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.preset.settings.audio_descriptions[0].audio_source_name #=> String
    #   resp.preset.settings.audio_descriptions[0].audio_type #=> Integer
    #   resp.preset.settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.audio_description_broadcaster_mix #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.codec_profile #=> String, one of "LC", "HEV1", "HEV2"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.specification #=> String, one of "MPEG2", "MPEG4"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "LOW", "MEDIUM_LOW", "MEDIUM_HIGH", "HIGH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.dynamic_range_compression_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.ac_3_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aiff_settings.bit_depth #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aiff_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.aiff_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.codec #=> String, one of "AAC", "MP2", "WAV", "AIFF", "AC3", "EAC3", "PASSTHROUGH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMPLETE_MAIN", "COMMENTARY", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_line #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.dynamic_range_compression_rf #=> String, one of "NONE", "FILM_STANDARD", "FILM_LIGHT", "MUSIC_STANDARD", "MUSIC_LIGHT", "SPEECH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "WHEN_POSSIBLE", "NO_PASSTHROUGH"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "SHIFT_90_DEGREES", "NO_SHIFT"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "NOT_INDICATED", "LO_RO", "LT_RT", "DPL2"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "NOT_INDICATED", "ENABLED", "DISABLED"
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_2_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.bit_depth #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.channels #=> Integer
    #   resp.preset.settings.audio_descriptions[0].codec_settings.wav_settings.sample_rate #=> Integer
    #   resp.preset.settings.audio_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.preset.settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels #=> Array
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels #=> Array
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channel_mapping.output_channels[0].input_channels[0] #=> Integer
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.preset.settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.preset.settings.audio_descriptions[0].stream_name #=> String
    #   resp.preset.settings.caption_descriptions #=> Array
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.background_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_resolution #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.font_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.outline_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_x_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.shadow_y_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.x_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.burnin_destination_settings.y_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.destination_type #=> String, one of "BURN_IN", "DVB_SUB", "EMBEDDED", "SCC", "SRT", "TELETEXT", "TTML", "WEBVTT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "WHITE", "BLACK", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "WHITE", "YELLOW", "RED", "GREEN", "BLUE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "NONE", "BLACK", "WHITE"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_spacing #=> String, one of "FIXED_GRID", "PROPORTIONAL"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.preset.settings.caption_descriptions[0].destination_settings.scc_destination_settings.framerate #=> String, one of "FRAMERATE_23_97", "FRAMERATE_24", "FRAMERATE_29_97_DROPFRAME", "FRAMERATE_29_97_NON_DROPFRAME"
    #   resp.preset.settings.caption_descriptions[0].destination_settings.teletext_destination_settings.page_number #=> String
    #   resp.preset.settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_passthrough #=> String, one of "ENABLED", "DISABLED"
    #   resp.preset.settings.caption_descriptions[0].language_code #=> String, one of "ENG", "SPA", "FRA", "DEU", "GER", "ZHO", "ARA", "HIN", "JPN", "RUS", "POR", "ITA", "URD", "VIE", "KOR", "PAN", "ABK", "AAR", "AFR", "AKA", "SQI", "AMH", "ARG", "HYE", "ASM", "AVA", "AVE", "AYM", "AZE", "BAM", "BAK", "EUS", "BEL", "BEN", "BIH", "BIS", "BOS", "BRE", "BUL", "MYA", "CAT", "KHM", "CHA", "CHE", "NYA", "CHU", "CHV", "COR", "COS", "CRE", "HRV", "CES", "DAN", "DIV", "NLD", "DZO", "ENM", "EPO", "EST", "EWE", "FAO", "FIJ", "FIN", "FRM", "FUL", "GLA", "GLG", "LUG", "KAT", "ELL", "GRN", "GUJ", "HAT", "HAU", "HEB", "HER", "HMO", "HUN", "ISL", "IDO", "IBO", "IND", "INA", "ILE", "IKU", "IPK", "GLE", "JAV", "KAL", "KAN", "KAU", "KAS", "KAZ", "KIK", "KIN", "KIR", "KOM", "KON", "KUA", "KUR", "LAO", "LAT", "LAV", "LIM", "LIN", "LIT", "LUB", "LTZ", "MKD", "MLG", "MSA", "MAL", "MLT", "GLV", "MRI", "MAR", "MAH", "MON", "NAU", "NAV", "NDE", "NBL", "NDO", "NEP", "SME", "NOR", "NOB", "NNO", "OCI", "OJI", "ORI", "ORM", "OSS", "PLI", "FAS", "POL", "PUS", "QUE", "QAA", "RON", "ROH", "RUN", "SMO", "SAG", "SAN", "SRD", "SRB", "SNA", "III", "SND", "SIN", "SLK", "SLV", "SOM", "SOT", "SUN", "SWA", "SSW", "SWE", "TGL", "TAH", "TGK", "TAM", "TAT", "TEL", "THA", "BOD", "TIR", "TON", "TSO", "TSN", "TUR", "TUK", "TWI", "UIG", "UKR", "UZB", "VEN", "VOL", "WLN", "CYM", "FRY", "WOL", "XHO", "YID", "YOR", "ZHA", "ZUL", "ORJ", "QPC", "TNG"
    #   resp.preset.settings.caption_descriptions[0].language_description #=> String
    #   resp.preset.settings.container_settings.container #=> String, one of "F4V", "ISMV", "M2TS", "M3U8", "MOV", "MP4", "MPD", "MXF", "RAW"
    #   resp.preset.settings.container_settings.f4v_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.preset.settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "DVB", "ATSC"
    #   resp.preset.settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.audio_pids #=> Array
    #   resp.preset.settings.container_settings.m2ts_settings.audio_pids[0] #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_nit_settings.nit_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.sdt_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sub_pids #=> Array
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_sub_pids[0] #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_tdt_settings.tdt_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.dvb_teletext_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.preset.settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.preset.settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.preset.settings.container_settings.m2ts_settings.max_pcr_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.min_ebp_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.preset.settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.preset.settings.container_settings.m2ts_settings.pcr_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.pmt_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.private_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.program_number #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.rate_mode #=> String, one of "VBR", "CBR"
    #   resp.preset.settings.container_settings.m2ts_settings.scte_35_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "NONE", "RAI_SEGSTART", "RAI_ADAPT", "PSI_SEGSTART", "EBP", "EBP_LEGACY"
    #   resp.preset.settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.preset.settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.preset.settings.container_settings.m2ts_settings.timed_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.preset.settings.container_settings.m2ts_settings.video_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_pids #=> Array
    #   resp.preset.settings.container_settings.m3u_8_settings.audio_pids[0] #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.nielsen_id_3 #=> String, one of "INSERT", "NONE"
    #   resp.preset.settings.container_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pcr_control #=> String, one of "PCR_EVERY_PES_PACKET", "CONFIGURED_PCR_PERIOD"
    #   resp.preset.settings.container_settings.m3u_8_settings.pcr_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.pmt_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.private_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.program_number #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.scte_35_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.scte_35_source #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m3u_8_settings.timed_metadata #=> String, one of "PASSTHROUGH", "NONE"
    #   resp.preset.settings.container_settings.m3u_8_settings.timed_metadata_pid #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.preset.settings.container_settings.m3u_8_settings.video_pid #=> Integer
    #   resp.preset.settings.container_settings.mov_settings.clap_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mov_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mov_settings.mpeg_2_four_cc_control #=> String, one of "XDCAM", "MPEG"
    #   resp.preset.settings.container_settings.mov_settings.padding_control #=> String, one of "OMNEON", "NONE"
    #   resp.preset.settings.container_settings.mov_settings.reference #=> String, one of "SELF_CONTAINED", "EXTERNAL"
    #   resp.preset.settings.container_settings.mp_4_settings.cslg_atom #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mp_4_settings.free_space_box #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.preset.settings.container_settings.mp_4_settings.moov_placement #=> String, one of "PROGRESSIVE_DOWNLOAD", "NORMAL"
    #   resp.preset.settings.container_settings.mp_4_settings.mp_4_major_brand #=> String
    #   resp.preset.settings.video_description.afd_signaling #=> String, one of "NONE", "AUTO", "FIXED"
    #   resp.preset.settings.video_description.anti_alias #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.codec #=> String, one of "FRAME_CAPTURE", "H_264", "H_265", "MPEG2", "PRORES"
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.max_captures #=> Integer
    #   resp.preset.settings.video_description.codec_settings.frame_capture_settings.quality #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_1_1", "LEVEL_1_2", "LEVEL_1_3", "LEVEL_2", "LEVEL_2_1", "LEVEL_2_2", "LEVEL_3", "LEVEL_3_1", "LEVEL_3_2", "LEVEL_4", "LEVEL_4_1", "LEVEL_4_2", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.codec_profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.field_encoding #=> String, one of "PAFF", "FORCE_FIELD"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.number_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.repeat_pps #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.softness #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h264_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h264_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH", "HIGHER", "MAX"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.alternate_transfer_function_sei #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.codec_level #=> String, one of "AUTO", "LEVEL_1", "LEVEL_2", "LEVEL_2_1", "LEVEL_3", "LEVEL_3_1", "LEVEL_4", "LEVEL_4_1", "LEVEL_5", "LEVEL_5_1", "LEVEL_5_2", "LEVEL_6", "LEVEL_6_1", "LEVEL_6_2"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.codec_profile #=> String, one of "MAIN_MAIN", "MAIN_HIGH", "MAIN10_MAIN", "MAIN10_HIGH", "MAIN_422_8BIT_MAIN", "MAIN_422_8BIT_HIGH", "MAIN_422_10BIT_MAIN", "MAIN_422_10BIT_HIGH"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.flicker_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.h265_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.min_i_interval #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.number_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "SINGLE_PASS_HQ", "MULTI_PASS_HQ"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.sample_adaptive_offset_filter_mode #=> String, one of "DEFAULT", "ADAPTIVE", "OFF"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.slices #=> Integer
    #   resp.preset.settings.video_description.codec_settings.h265_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.temporal_ids #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.tiles #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.h265_settings.unregistered_sei_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.adaptive_quantization #=> String, one of "OFF", "LOW", "MEDIUM", "HIGH"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.codec_level #=> String, one of "AUTO", "LOW", "MAIN", "HIGH1440", "HIGH"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.codec_profile #=> String, one of "MAIN", "PROFILE_422"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.gop_closed_cadence #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.gop_size #=> Float
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.hrd_buffer_initial_fill_percentage #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.hrd_buffer_size #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.intra_dc_precision #=> String, one of "AUTO", "INTRA_DC_PRECISION_8", "INTRA_DC_PRECISION_9", "INTRA_DC_PRECISION_10", "INTRA_DC_PRECISION_11"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.max_bitrate #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.min_i_interval #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.number_b_frames_between_reference_frames #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.quality_tuning_level #=> String, one of "SINGLE_PASS", "MULTI_PASS"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.rate_control_mode #=> String, one of "VBR", "CBR"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.softness #=> Integer
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.spatial_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.syntax #=> String, one of "DEFAULT", "D_10"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.telecine #=> String, one of "NONE", "SOFT", "HARD"
    #   resp.preset.settings.video_description.codec_settings.mpeg_2_settings.temporal_adaptive_quantization #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.codec_profile #=> String, one of "APPLE_PRORES_422", "APPLE_PRORES_422_HQ", "APPLE_PRORES_422_LT", "APPLE_PRORES_422_PROXY"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_conversion_algorithm #=> String, one of "DUPLICATE_DROP", "INTERPOLATE"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.framerate_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.interlace_mode #=> String, one of "PROGRESSIVE", "TOP_FIELD", "BOTTOM_FIELD", "FOLLOW_TOP_FIELD", "FOLLOW_BOTTOM_FIELD"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.par_denominator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.par_numerator #=> Integer
    #   resp.preset.settings.video_description.codec_settings.prores_settings.slow_pal #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.codec_settings.prores_settings.telecine #=> String, one of "NONE", "HARD"
    #   resp.preset.settings.video_description.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.preset.settings.video_description.crop.height #=> Integer
    #   resp.preset.settings.video_description.crop.width #=> Integer
    #   resp.preset.settings.video_description.crop.x #=> Integer
    #   resp.preset.settings.video_description.crop.y #=> Integer
    #   resp.preset.settings.video_description.drop_frame_timecode #=> String, one of "DISABLED", "ENABLED"
    #   resp.preset.settings.video_description.fixed_afd #=> Integer
    #   resp.preset.settings.video_description.height #=> Integer
    #   resp.preset.settings.video_description.position.height #=> Integer
    #   resp.preset.settings.video_description.position.width #=> Integer
    #   resp.preset.settings.video_description.position.x #=> Integer
    #   resp.preset.settings.video_description.position.y #=> Integer
    #   resp.preset.settings.video_description.respond_to_afd #=> String, one of "NONE", "RESPOND", "PASSTHROUGH"
    #   resp.preset.settings.video_description.scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.preset.settings.video_description.sharpness #=> Integer
    #   resp.preset.settings.video_description.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.brightness #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.color_space_conversion #=> String, one of "NONE", "FORCE_601", "FORCE_709", "FORCE_HDR10", "FORCE_HLG_2020"
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.contrast #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.blue_primary_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.green_primary_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_content_light_level #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_frame_average_light_level #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.max_luminance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.min_luminance #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.red_primary_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hdr_10_metadata.white_point_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.hue #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.color_corrector.saturation #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.deinterlacer.algorithm #=> String, one of "INTERPOLATE", "INTERPOLATE_TICKER", "BLEND", "BLEND_TICKER"
    #   resp.preset.settings.video_description.video_preprocessors.deinterlacer.control #=> String, one of "FORCE_ALL_FRAMES", "NORMAL"
    #   resp.preset.settings.video_description.video_preprocessors.deinterlacer.mode #=> String, one of "DEINTERLACE", "INVERSE_TELECINE", "ADAPTIVE"
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images #=> Array
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].duration #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].fade_in #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].fade_out #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].height #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_inserter_input #=> String
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_x #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].image_y #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].layer #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].opacity #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].start_time #=> String
    #   resp.preset.settings.video_description.video_preprocessors.image_inserter.insertable_images[0].width #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.filter #=> String, one of "BILATERAL", "MEAN", "GAUSSIAN", "LANCZOS", "SHARPEN", "CONSERVE", "SPATIAL"
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.filter_settings.strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.post_filter_sharpen_strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.speed #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.noise_reducer.spatial_filter_settings.strength #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.timecode_burnin.font_size #=> Integer
    #   resp.preset.settings.video_description.video_preprocessors.timecode_burnin.position #=> String, one of "TOP_CENTER", "TOP_LEFT", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_CENTER", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_CENTER", "BOTTOM_RIGHT"
    #   resp.preset.settings.video_description.video_preprocessors.timecode_burnin.prefix #=> String
    #   resp.preset.settings.video_description.width #=> Integer
    #   resp.preset.type #=> String, one of "SYSTEM", "CUSTOM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/UpdatePreset AWS API Documentation
    #
    # @overload update_preset(params = {})
    # @param [Hash] params ({})
    def update_preset(params = {}, options = {})
      req = build_request(:update_preset, params)
      req.send_request(options)
    end

    # Modify one of your existing queues.
    #
    # @option params [String] :description
    #   The new description for the queue, if you are changing it.
    #
    # @option params [required, String] :name
    #   The name of the queue you are modifying.
    #
    # @option params [String] :status
    #   Queues can be ACTIVE or PAUSED. If you pause a queue, jobs in that
    #   queue will not begin. Jobs running when a queue is paused continue to
    #   run until they finish or error out.
    #
    # @return [Types::UpdateQueueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateQueueResponse#queue #queue} => Types::Queue
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue({
    #     description: "__string",
    #     name: "__string", # required
    #     status: "ACTIVE", # accepts ACTIVE, PAUSED
    #   })
    #
    # @example Response structure
    #
    #   resp.queue.arn #=> String
    #   resp.queue.created_at #=> Time
    #   resp.queue.description #=> String
    #   resp.queue.last_updated #=> Time
    #   resp.queue.name #=> String
    #   resp.queue.status #=> String, one of "ACTIVE", "PAUSED"
    #   resp.queue.type #=> String, one of "SYSTEM", "CUSTOM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconvert-2017-08-29/UpdateQueue AWS API Documentation
    #
    # @overload update_queue(params = {})
    # @param [Hash] params ({})
    def update_queue(params = {}, options = {})
      req = build_request(:update_queue, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-mediaconvert'
      context[:gem_version] = '1.1.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
