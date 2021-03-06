#ifndef COAPSERVER_H_
#define COAPSERVER_H_

#define COAP_DATA_BUFF_SIZE 255
#define MAX_URI_PATH_LENGTH 32

#include "contiki.h"
#include "rest-coap/coap-common.h"

/*Declare process*/
PROCESS_NAME(coap_server);

#define MOTE_SERVER_LISTEN_PORT 61616
#define MOTE_CLIENT_LISTEN_PORT 61617

error_t parse_message(coap_packet_t* packet, u8_t* buf, u16_t size);

u16_t coap_get_payload(coap_packet_t* packet, u8_t** payload);
int coap_set_payload(coap_packet_t* packet, u8_t* payload, u16_t size);

content_type_t coap_get_header_content_type(coap_packet_t* packet);
int coap_set_header_content_type(coap_packet_t* packet, content_type_t content_type);

int coap_get_header_subscription_lifetime(coap_packet_t* packet, u32_t* lifetime);
int coap_set_header_subscription_lifetime(coap_packet_t* packet, u32_t lifetime);

int coap_get_header_block(coap_packet_t* packet, block_option_t* block);
int coap_set_header_block(coap_packet_t* packet, u32_t number, u8_t more, u8_t size);

int coap_set_header_uri(coap_packet_t* packet, char* uri);
int coap_set_header_etag(coap_packet_t* packet, u8_t* etag, u8_t size);

void coap_set_code(coap_packet_t* packet, status_code_t code);

coap_method_t coap_get_method(coap_packet_t* packet);
void coap_set_method(coap_packet_t* packet, coap_method_t method);

int coap_get_query_variable(coap_packet_t* packet, const char *name, char* output, u16_t output_size);
int coap_get_post_variable(coap_packet_t* packet, const char *name, char* output, u16_t output_size);

header_option_t* coap_get_option(coap_packet_t* packet, option_type option_type);
u8_t coap_set_option(coap_packet_t* packet, option_type option_type, u16_t len, u8_t* value);

/*Type definition of the service callback*/
typedef int (*service_callback) (coap_packet_t* request, coap_packet_t* response);

/*
 *Setter of the service callback, this callback will be called in case of HTTP request.
 */
void coap_set_service_callback(service_callback callback);

struct observable_resource_t;
void observable_resource_changed(struct observable_resource_t* resource);

struct periodic_resource_t;
void resource_changed(struct periodic_resource_t* resource);

#endif /* COAPSERVER_H_ */
