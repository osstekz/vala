/* gnet-2.0.vapi generated by lt-vapigen, do not modify. */

[CCode (cprefix = "G", lower_case_cprefix = "gnet_")]
namespace GNet {
	[CCode (cprefix = "GNET_IO_ERROR_", cheader_filename = "gnet.h")]
	public enum IOError {
		NONE,
		AGAIN,
		INVAL,
		UNKNOWN,
	}
	[CCode (cprefix = "GNET_CONN_", cheader_filename = "gnet.h")]
	public enum ConnEventType {
		ERROR,
		CONNECT,
		CLOSE,
		TIMEOUT,
		READ,
		WRITE,
		READABLE,
		WRITABLE,
	}
	[CCode (cprefix = "GNET_CONN_HTTP_ERROR_", cheader_filename = "gnet.h")]
	public enum ConnHttpError {
		UNSPECIFIED,
		PROTOCOL_UNSUPPORTED,
		HOSTNAME_RESOLUTION,
	}
	[CCode (cprefix = "GNET_CONN_HTTP_", cheader_filename = "gnet.h")]
	public enum ConnHttpEventType {
		RESOLVED,
		CONNECTED,
		RESPONSE,
		REDIRECT,
		DATA_PARTIAL,
		DATA_COMPLETE,
		TIMEOUT,
		ERROR,
	}
	[CCode (cprefix = "GNET_CONN_HTTP_FLAG_SKIP_HEADER_", cheader_filename = "gnet.h")]
	public enum ConnHttpHeaderFlags {
		CHECK,
	}
	[CCode (cprefix = "GNET_CONN_HTTP_METHOD_", cheader_filename = "gnet.h")]
	public enum ConnHttpMethod {
		GET,
		POST,
	}
	[CCode (cprefix = "GIPV6_POLICY_", cheader_filename = "gnet.h")]
	public enum IPv6Policy {
		IPV4_THEN_IPV6,
		IPV6_THEN_IPV4,
		IPV4_ONLY,
		IPV6_ONLY,
	}
	[CCode (cprefix = "GNET_TOS_", cheader_filename = "gnet.h")]
	public enum TOS {
		NONE,
		LOWDELAY,
		THROUGHPUT,
		RELIABILITY,
		LOWCOST,
	}
	[CCode (cprefix = "GTCP_SOCKET_CONNECT_ASYNC_STATUS_", cheader_filename = "gnet.h")]
	public enum TcpSocketConnectAsyncStatus {
		OK,
		INETADDR_ERROR,
		TCP_ERROR,
	}
	[CCode (cheader_filename = "gnet.h")]
	public class Conn {
		public weak string hostname;
		public int port;
		public weak GLib.IOChannel iochannel;
		public weak GNet.TcpSocket socket;
		public weak GNet.InetAddr inetaddr;
		public uint ref_count;
		public uint ref_count_internal;
		public weak GNet.TcpSocketConnectAsyncID connect_id;
		public weak GNet.TcpSocketNewAsyncID new_id;
		public weak GLib.List write_queue;
		public uint bytes_written;
		public weak string buffer;
		public uint length;
		public uint bytes_read;
		public bool read_eof;
		public weak GLib.List read_queue;
		public uint process_buffer_timeout;
		public bool watch_readable;
		public bool watch_writable;
		public uint watch_flags;
		public uint watch;
		public uint timer;
		public GNet.ConnFunc func;
		public pointer user_data;
		public weak GLib.MainContext context;
		public int priority;
	}
	[CCode (cheader_filename = "gnet.h")]
	public class ConnEvent {
		public GNet.ConnEventType type;
		public weak string buffer;
		public int length;
	}
	[CCode (cheader_filename = "gnet.h")]
	public class ConnHttp {
	}
	[CCode (cheader_filename = "gnet.h")]
	public class ConnHttpEvent {
		public GNet.ConnHttpEventType type;
		public ulong stsize;
		[NoArrayLength]
		public weak pointer[] padding;
	}
	[CCode (cheader_filename = "gnet.h")]
	public class ConnHttpEventData {
		public weak GNet.ConnHttpEvent parent;
		public uint64 content_length;
		public uint64 data_received;
		public weak string buffer;
		public ulong buffer_length;
		[NoArrayLength]
		public weak pointer[] padding;
	}
	[CCode (cheader_filename = "gnet.h")]
	public class ConnHttpEventError {
		public weak GNet.ConnHttpEvent parent;
		public GNet.ConnHttpError code;
		public weak string message;
		[NoArrayLength]
		public weak pointer[] padding;
	}
	[CCode (cheader_filename = "gnet.h")]
	public class ConnHttpEventRedirect {
		public weak GNet.ConnHttpEvent parent;
		public uint num_redirects;
		public uint max_redirects;
		public weak string new_location;
		public bool auto_redirect;
		[NoArrayLength]
		public weak pointer[] padding;
	}
	[CCode (cheader_filename = "gnet.h")]
	public class ConnHttpEventResolved {
		public weak GNet.ConnHttpEvent parent;
		public weak GNet.InetAddr ia;
		[NoArrayLength]
		public weak pointer[] padding;
	}
	[CCode (cheader_filename = "gnet.h")]
	public class ConnHttpEventResponse {
		public weak GNet.ConnHttpEvent parent;
		public uint response_code;
		public weak string header_fields;
		public weak string header_values;
		[NoArrayLength]
		public weak pointer[] padding;
	}
	[CCode (cheader_filename = "gnet.h")]
	public class InetAddr {
	}
	[CCode (cheader_filename = "gnet.h")]
	public class InetAddrGetNameAsyncID {
	}
	[CCode (cheader_filename = "gnet.h")]
	public class InetAddrNewAsyncID {
	}
	[CCode (cheader_filename = "gnet.h")]
	public class InetAddrNewListAsyncID {
	}
	[CCode (cheader_filename = "gnet.h")]
	public class MD5 {
	}
	[CCode (cheader_filename = "gnet.h")]
	public class McastSocket {
	}
	[CCode (cheader_filename = "gnet.h")]
	public class SHA {
	}
	[CCode (cheader_filename = "gnet.h")]
	public class Server {
		public weak GNet.InetAddr iface;
		public int port;
		public weak GNet.TcpSocket socket;
		public uint ref_count;
		public GNet.ServerFunc func;
		public pointer user_data;
	}
	[CCode (cheader_filename = "gnet.h")]
	public class TcpSocket {
	}
	[CCode (cheader_filename = "gnet.h")]
	public class TcpSocketConnectAsyncID {
	}
	[CCode (cheader_filename = "gnet.h")]
	public class TcpSocketNewAsyncID {
	}
	[CCode (cheader_filename = "gnet.h")]
	public class URI {
		public weak string scheme;
		public weak string userinfo;
		public weak string hostname;
		public int port;
		public weak string path;
		public weak string query;
		public weak string fragment;
	}
	[CCode (cheader_filename = "gnet.h")]
	public class UdpSocket {
	}
	[CCode (cheader_filename = "gnet.h")]
	public class UnixSocket {
	}
	[CCode (cheader_filename = "gnet.h")]
	public struct NetTOS {
	}
	[CCode (cheader_filename = "gnet.h")]
	public delegate void ConnFunc (GNet.Conn conn, GNet.ConnEvent event);
	[CCode (cheader_filename = "gnet.h")]
	public delegate void ConnHttpFunc (GNet.ConnHttp conn, GNet.ConnHttpEvent event);
	[CCode (cheader_filename = "gnet.h")]
	public static delegate void InetAddrGetNameAsyncFunc (string hostname, pointer data);
	[CCode (cheader_filename = "gnet.h")]
	public static delegate void InetAddrNewAsyncFunc (GNet.InetAddr inetaddr, pointer data);
	[CCode (cheader_filename = "gnet.h")]
	public static delegate void InetAddrNewListAsyncFunc (GLib.List list, pointer data);
	[CCode (cheader_filename = "gnet.h")]
	public delegate void ServerFunc (GNet.Server server, GNet.Conn conn);
	[CCode (cheader_filename = "gnet.h")]
	public static delegate void TcpSocketAcceptFunc (GNet.TcpSocket server, GNet.TcpSocket client, pointer data);
	[CCode (cheader_filename = "gnet.h")]
	public static delegate void TcpSocketConnectAsyncFunc (GNet.TcpSocket socket, GNet.TcpSocketConnectAsyncStatus status, pointer data);
	[CCode (cheader_filename = "gnet.h")]
	public static delegate void TcpSocketNewAsyncFunc (GNet.TcpSocket socket, pointer data);
	public const int INETADDR_MAX_LEN;
	public const int MD5_HASH_LENGTH;
	public const int SHA_HASH_LENGTH;
	public const int SOCKS_PORT;
	public const int SOCKS_VERSION;
	[CCode (cheader_filename = "gnet.h")]
	public static weak string base64_decode (string src, int srclen, int dstlenp);
	[CCode (cheader_filename = "gnet.h")]
	public static weak string base64_encode (string src, int srclen, int dstlenp, bool strict);
	[CCode (cheader_filename = "gnet.h")]
	public static int calcsize (string format);
	[CCode (cheader_filename = "gnet.h")]
	public static void conn_connect (GNet.Conn conn);
	[CCode (cheader_filename = "gnet.h")]
	public static void conn_delete (GNet.Conn conn);
	[CCode (cheader_filename = "gnet.h")]
	public static void conn_disconnect (GNet.Conn conn);
	[CCode (cheader_filename = "gnet.h")]
	public static void conn_http_cancel (GNet.ConnHttp conn);
	[CCode (cheader_filename = "gnet.h")]
	public static void conn_http_delete (GNet.ConnHttp conn);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.ConnHttp conn_http_new ();
	[CCode (cheader_filename = "gnet.h")]
	public static bool conn_http_run (GNet.ConnHttp conn, GNet.ConnHttpFunc func);
	[CCode (cheader_filename = "gnet.h")]
	public static void conn_http_run_async (GNet.ConnHttp conn, GNet.ConnHttpFunc func);
	[CCode (cheader_filename = "gnet.h")]
	public static bool conn_http_set_escaped_uri (GNet.ConnHttp conn, string uri);
	[CCode (cheader_filename = "gnet.h")]
	public static bool conn_http_set_header (GNet.ConnHttp conn, string field, string value, GNet.ConnHttpHeaderFlags flags);
	[CCode (cheader_filename = "gnet.h")]
	public static bool conn_http_set_main_context (GNet.ConnHttp conn, GLib.MainContext context);
	[CCode (cheader_filename = "gnet.h")]
	public static void conn_http_set_max_redirects (GNet.ConnHttp conn, uint num);
	[CCode (cheader_filename = "gnet.h")]
	public static bool conn_http_set_method (GNet.ConnHttp conn, GNet.ConnHttpMethod method, string post_data, ulong post_data_len);
	[CCode (cheader_filename = "gnet.h")]
	public static void conn_http_set_timeout (GNet.ConnHttp conn, uint timeout);
	[CCode (cheader_filename = "gnet.h")]
	public static bool conn_http_set_uri (GNet.ConnHttp conn, string uri);
	[CCode (cheader_filename = "gnet.h")]
	public static bool conn_http_set_user_agent (GNet.ConnHttp conn, string agent);
	[CCode (cheader_filename = "gnet.h")]
	public static bool conn_http_steal_buffer (GNet.ConnHttp conn, string buffer, ulong length);
	[CCode (cheader_filename = "gnet.h")]
	public static bool conn_is_connected (GNet.Conn conn);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.Conn conn_new (string hostname, int port, GNet.ConnFunc func);
	[CCode (cname = "gnet_conn_new_inetaddr", cheader_filename = "gnet.h")]
	public static weak GNet.Conn from_inetaddr (GNet.InetAddr inetaddr, GNet.ConnFunc func);
	[CCode (cname = "gnet_conn_new_socket", cheader_filename = "gnet.h")]
	public static weak GNet.Conn from_socket (GNet.TcpSocket socket, GNet.ConnFunc func);
	[CCode (cheader_filename = "gnet.h")]
	public static void conn_read (GNet.Conn conn);
	[CCode (cheader_filename = "gnet.h")]
	public static void conn_readline (GNet.Conn conn);
	[CCode (cheader_filename = "gnet.h")]
	public static void conn_readn (GNet.Conn conn, int length);
	[CCode (cheader_filename = "gnet.h")]
	public static void conn_ref (GNet.Conn conn);
	[CCode (cheader_filename = "gnet.h")]
	public static void conn_set_callback (GNet.Conn conn, GNet.ConnFunc func);
	[CCode (cheader_filename = "gnet.h")]
	public static bool conn_set_main_context (GNet.Conn conn, GLib.MainContext context);
	[CCode (cheader_filename = "gnet.h")]
	public static void conn_set_watch_error (GNet.Conn conn, bool enable);
	[CCode (cheader_filename = "gnet.h")]
	public static void conn_set_watch_readable (GNet.Conn conn, bool enable);
	[CCode (cheader_filename = "gnet.h")]
	public static void conn_set_watch_writable (GNet.Conn conn, bool enable);
	[CCode (cheader_filename = "gnet.h")]
	public static void conn_timeout (GNet.Conn conn, uint timeout);
	[CCode (cheader_filename = "gnet.h")]
	public static void conn_unref (GNet.Conn conn);
	[CCode (cheader_filename = "gnet.h")]
	public static void conn_write (GNet.Conn conn, string buffer, int length);
	[CCode (cheader_filename = "gnet.h")]
	public static void conn_write_direct (GNet.Conn conn, string buffer, int length, GLib.DestroyNotify buffer_destroy_cb);
	[CCode (cheader_filename = "gnet.h")]
	public static bool http_get (string url, string buffer, ulong length, uint response);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.InetAddr inetaddr_autodetect_internet_interface ();
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.InetAddr inetaddr_clone (GNet.InetAddr inetaddr);
	[CCode (cheader_filename = "gnet.h")]
	public static void inetaddr_delete (GNet.InetAddr inetaddr);
	[CCode (cheader_filename = "gnet.h")]
	public static void inetaddr_delete_list (GLib.List list);
	[CCode (cheader_filename = "gnet.h")]
	public static bool inetaddr_equal (pointer p1, pointer p2);
	[CCode (cheader_filename = "gnet.h")]
	public static void inetaddr_get_bytes (GNet.InetAddr inetaddr, string buffer);
	[CCode (cheader_filename = "gnet.h")]
	public static weak string inetaddr_get_canonical_name (GNet.InetAddr inetaddr);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.InetAddr inetaddr_get_host_addr ();
	[CCode (cheader_filename = "gnet.h")]
	public static weak string inetaddr_get_host_name ();
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.InetAddr inetaddr_get_interface_to (GNet.InetAddr inetaddr);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.InetAddr inetaddr_get_internet_interface ();
	[CCode (cheader_filename = "gnet.h")]
	public static int inetaddr_get_length (GNet.InetAddr inetaddr);
	[CCode (cheader_filename = "gnet.h")]
	public static weak string inetaddr_get_name (GNet.InetAddr inetaddr);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.InetAddrGetNameAsyncID inetaddr_get_name_async (GNet.InetAddr inetaddr, GNet.InetAddrGetNameAsyncFunc func, pointer data);
	[CCode (cheader_filename = "gnet.h")]
	public static void inetaddr_get_name_async_cancel (GNet.InetAddrGetNameAsyncID id);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.InetAddrGetNameAsyncID inetaddr_get_name_async_full (GNet.InetAddr inetaddr, GNet.InetAddrGetNameAsyncFunc func, pointer data, GLib.DestroyNotify notify, GLib.MainContext context, int priority);
	[CCode (cheader_filename = "gnet.h")]
	public static weak string inetaddr_get_name_nonblock (GNet.InetAddr inetaddr);
	[CCode (cheader_filename = "gnet.h")]
	public static int inetaddr_get_port (GNet.InetAddr inetaddr);
	[CCode (cheader_filename = "gnet.h")]
	public static uint inetaddr_hash (pointer p);
	[CCode (cheader_filename = "gnet.h")]
	public static bool inetaddr_is_broadcast (GNet.InetAddr inetaddr);
	[CCode (cheader_filename = "gnet.h")]
	public static bool inetaddr_is_canonical (string hostname);
	[CCode (cheader_filename = "gnet.h")]
	public static bool inetaddr_is_internet (GNet.InetAddr inetaddr);
	[CCode (cheader_filename = "gnet.h")]
	public static bool inetaddr_is_internet_domainname (string name);
	[CCode (cheader_filename = "gnet.h")]
	public static bool inetaddr_is_ipv4 (GNet.InetAddr inetaddr);
	[CCode (cheader_filename = "gnet.h")]
	public static bool inetaddr_is_ipv6 (GNet.InetAddr inetaddr);
	[CCode (cheader_filename = "gnet.h")]
	public static bool inetaddr_is_loopback (GNet.InetAddr inetaddr);
	[CCode (cheader_filename = "gnet.h")]
	public static bool inetaddr_is_multicast (GNet.InetAddr inetaddr);
	[CCode (cheader_filename = "gnet.h")]
	public static bool inetaddr_is_private (GNet.InetAddr inetaddr);
	[CCode (cheader_filename = "gnet.h")]
	public static bool inetaddr_is_reserved (GNet.InetAddr inetaddr);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GLib.List inetaddr_list_interfaces ();
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.InetAddr inetaddr_new (string hostname, int port);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.InetAddrNewAsyncID inetaddr_new_async (string hostname, int port, GNet.InetAddrNewAsyncFunc func, pointer data);
	[CCode (cheader_filename = "gnet.h")]
	public static void inetaddr_new_async_cancel (GNet.InetAddrNewAsyncID id);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.InetAddrNewAsyncID inetaddr_new_async_full (string hostname, int port, GNet.InetAddrNewAsyncFunc func, pointer data, GLib.DestroyNotify notify, GLib.MainContext context, int priority);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.InetAddr inetaddr_new_bytes (string bytes, uint length);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GLib.List inetaddr_new_list (string hostname, int port);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.InetAddrNewListAsyncID inetaddr_new_list_async (string hostname, int port, GNet.InetAddrNewListAsyncFunc func, pointer data);
	[CCode (cheader_filename = "gnet.h")]
	public static void inetaddr_new_list_async_cancel (GNet.InetAddrNewListAsyncID id);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.InetAddrNewListAsyncID inetaddr_new_list_async_full (string hostname, int port, GNet.InetAddrNewListAsyncFunc func, pointer data, GLib.DestroyNotify notify, GLib.MainContext context, int priority);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.InetAddr inetaddr_new_nonblock (string hostname, int port);
	[CCode (cheader_filename = "gnet.h")]
	public static bool inetaddr_noport_equal (pointer p1, pointer p2);
	[CCode (cheader_filename = "gnet.h")]
	public static void inetaddr_ref (GNet.InetAddr inetaddr);
	[CCode (cheader_filename = "gnet.h")]
	public static void inetaddr_set_bytes (GNet.InetAddr inetaddr, string bytes, int length);
	[CCode (cheader_filename = "gnet.h")]
	public static void inetaddr_set_port (GNet.InetAddr inetaddr, int port);
	[CCode (cheader_filename = "gnet.h")]
	public static void inetaddr_unref (GNet.InetAddr inetaddr);
	[CCode (cheader_filename = "gnet.h")]
	public static void init ();
	[CCode (cheader_filename = "gnet.h")]
	public static GNet.IOError io_channel_readline (GLib.IOChannel channel, string buffer, ulong length, ulong bytes_readp);
	[CCode (cheader_filename = "gnet.h")]
	public static GNet.IOError io_channel_readline_strdup (GLib.IOChannel channel, string bufferp, ulong bytes_readp);
	[CCode (cheader_filename = "gnet.h")]
	public static GNet.IOError io_channel_readn (GLib.IOChannel channel, pointer buffer, ulong length, ulong bytes_readp);
	[CCode (cheader_filename = "gnet.h")]
	public static GNet.IOError io_channel_writen (GLib.IOChannel channel, pointer buffer, ulong length, ulong bytes_writtenp);
	[CCode (cheader_filename = "gnet.h")]
	public static GNet.IPv6Policy ipv6_get_policy ();
	[CCode (cheader_filename = "gnet.h")]
	public static void ipv6_set_policy (GNet.IPv6Policy policy);
	[CCode (cheader_filename = "gnet.h")]
	public static void mcast_socket_delete (GNet.McastSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GLib.IOChannel mcast_socket_get_io_channel (GNet.McastSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.InetAddr mcast_socket_get_local_inetaddr (GNet.McastSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static int mcast_socket_get_ttl (GNet.McastSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static bool mcast_socket_has_packet (GNet.McastSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static int mcast_socket_is_loopback (GNet.McastSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static int mcast_socket_join_group (GNet.McastSocket socket, GNet.InetAddr inetaddr);
	[CCode (cheader_filename = "gnet.h")]
	public static int mcast_socket_leave_group (GNet.McastSocket socket, GNet.InetAddr inetaddr);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.McastSocket mcast_socket_new ();
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.McastSocket mcast_socket_new_full (GNet.InetAddr iface, int port);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.McastSocket mcast_socket_new_with_port (int port);
	[CCode (cheader_filename = "gnet.h")]
	public static int mcast_socket_receive (GNet.McastSocket socket, string buffer, int length, out weak GNet.InetAddr src);
	[CCode (cheader_filename = "gnet.h")]
	public static void mcast_socket_ref (GNet.McastSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static int mcast_socket_send (GNet.McastSocket socket, string buffer, int length, GNet.InetAddr dst);
	[CCode (cheader_filename = "gnet.h")]
	public static int mcast_socket_set_loopback (GNet.McastSocket socket, bool enable);
	[CCode (cheader_filename = "gnet.h")]
	public static int mcast_socket_set_ttl (GNet.McastSocket socket, int ttl);
	[CCode (cheader_filename = "gnet.h")]
	public static void mcast_socket_unref (GNet.McastSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.MD5 md5_clone (GNet.MD5 md5);
	[CCode (cheader_filename = "gnet.h")]
	public static void md5_copy_string (GNet.MD5 md5, string buffer);
	[CCode (cheader_filename = "gnet.h")]
	public static void md5_delete (GNet.MD5 md5);
	[CCode (cheader_filename = "gnet.h")]
	public static bool md5_equal (pointer p1, pointer p2);
	[CCode (cheader_filename = "gnet.h")]
	public static void md5_final (GNet.MD5 md5);
	[CCode (cheader_filename = "gnet.h")]
	public static weak string md5_get_digest (GNet.MD5 md5);
	[CCode (cheader_filename = "gnet.h")]
	public static weak string md5_get_string (GNet.MD5 md5);
	[CCode (cheader_filename = "gnet.h")]
	public static uint md5_hash (pointer p);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.MD5 md5_new (string buffer, uint length);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.MD5 md5_new_incremental ();
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.MD5 md5_new_string (string str);
	[CCode (cheader_filename = "gnet.h")]
	public static void md5_update (GNet.MD5 md5, string buffer, uint length);
	[CCode (cheader_filename = "gnet.h")]
	public static int pack (string format, string buffer, int length);
	[CCode (cheader_filename = "gnet.h")]
	public static int pack_strdup (string format, string bufferp);
	[CCode (cheader_filename = "gnet.h")]
	public static void server_delete (GNet.Server server);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.Server server_new (GNet.InetAddr iface, int port, GNet.ServerFunc func);
	[CCode (cheader_filename = "gnet.h")]
	public static void server_ref (GNet.Server server);
	[CCode (cheader_filename = "gnet.h")]
	public static void server_unref (GNet.Server server);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.SHA sha_clone (GNet.SHA sha);
	[CCode (cheader_filename = "gnet.h")]
	public static void sha_copy_string (GNet.SHA sha, string buffer);
	[CCode (cheader_filename = "gnet.h")]
	public static void sha_delete (GNet.SHA sha);
	[CCode (cheader_filename = "gnet.h")]
	public static bool sha_equal (pointer p1, pointer p2);
	[CCode (cheader_filename = "gnet.h")]
	public static void sha_final (GNet.SHA sha);
	[CCode (cheader_filename = "gnet.h")]
	public static weak string sha_get_digest (GNet.SHA sha);
	[CCode (cheader_filename = "gnet.h")]
	public static weak string sha_get_string (GNet.SHA sha);
	[CCode (cheader_filename = "gnet.h")]
	public static uint sha_hash (pointer p);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.SHA sha_new (string buffer, uint length);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.SHA sha_new_incremental ();
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.SHA sha_new_string (string str);
	[CCode (cheader_filename = "gnet.h")]
	public static void sha_update (GNet.SHA sha, string buffer, uint length);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.TcpSocket tcp_socket_connect (string hostname, int port);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.TcpSocketConnectAsyncID tcp_socket_connect_async (string hostname, int port, GNet.TcpSocketConnectAsyncFunc func, pointer data);
	[CCode (cheader_filename = "gnet.h")]
	public static void tcp_socket_connect_async_cancel (GNet.TcpSocketConnectAsyncID id);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.TcpSocketConnectAsyncID tcp_socket_connect_async_full (string hostname, int port, GNet.TcpSocketConnectAsyncFunc func, pointer data, GLib.DestroyNotify notify, GLib.MainContext context, int priority);
	[CCode (cheader_filename = "gnet.h")]
	public static void tcp_socket_delete (GNet.TcpSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GLib.IOChannel tcp_socket_get_io_channel (GNet.TcpSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.InetAddr tcp_socket_get_local_inetaddr (GNet.TcpSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static int tcp_socket_get_port (GNet.TcpSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.InetAddr tcp_socket_get_remote_inetaddr (GNet.TcpSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.TcpSocket tcp_socket_new (GNet.InetAddr addr);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.TcpSocketNewAsyncID tcp_socket_new_async (GNet.InetAddr addr, GNet.TcpSocketNewAsyncFunc func, pointer data);
	[CCode (cheader_filename = "gnet.h")]
	public static void tcp_socket_new_async_cancel (GNet.TcpSocketNewAsyncID id);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.TcpSocketNewAsyncID tcp_socket_new_async_direct (GNet.InetAddr addr, GNet.TcpSocketNewAsyncFunc func, pointer data);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.TcpSocketNewAsyncID tcp_socket_new_async_direct_full (GNet.InetAddr addr, GNet.TcpSocketNewAsyncFunc func, pointer data, GLib.DestroyNotify notify, GLib.MainContext context, int priority);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.TcpSocketNewAsyncID tcp_socket_new_async_full (GNet.InetAddr addr, GNet.TcpSocketNewAsyncFunc func, pointer data, GLib.DestroyNotify notify, GLib.MainContext context, int priority);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.TcpSocket tcp_socket_new_direct (GNet.InetAddr addr);
	[CCode (cheader_filename = "gnet.h")]
	public static void tcp_socket_ref (GNet.TcpSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.TcpSocket tcp_socket_server_accept (GNet.TcpSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static void tcp_socket_server_accept_async (GNet.TcpSocket socket, GNet.TcpSocketAcceptFunc accept_func);
	[CCode (cheader_filename = "gnet.h")]
	public static void tcp_socket_server_accept_async_cancel (GNet.TcpSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.TcpSocket tcp_socket_server_accept_nonblock (GNet.TcpSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.TcpSocket tcp_socket_server_new ();
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.TcpSocket tcp_socket_server_new_full (GNet.InetAddr iface, int port);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.TcpSocket tcp_socket_server_new_with_port (int port);
	[CCode (cheader_filename = "gnet.h")]
	public static void tcp_socket_set_tos (GNet.TcpSocket socket, GNet.NetTOS tos);
	[CCode (cheader_filename = "gnet.h")]
	public static void tcp_socket_unref (GNet.TcpSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static void udp_socket_delete (GNet.UdpSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GLib.IOChannel udp_socket_get_io_channel (GNet.UdpSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.InetAddr udp_socket_get_local_inetaddr (GNet.UdpSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static int udp_socket_get_ttl (GNet.UdpSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static bool udp_socket_has_packet (GNet.UdpSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.UdpSocket udp_socket_new ();
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.UdpSocket udp_socket_new_full (GNet.InetAddr iface, int port);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.UdpSocket udp_socket_new_with_port (int port);
	[CCode (cheader_filename = "gnet.h")]
	public static int udp_socket_receive (GNet.UdpSocket socket, string buffer, int length, out weak GNet.InetAddr src);
	[CCode (cheader_filename = "gnet.h")]
	public static void udp_socket_ref (GNet.UdpSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static int udp_socket_send (GNet.UdpSocket socket, string buffer, int length, GNet.InetAddr dst);
	[CCode (cheader_filename = "gnet.h")]
	public static int udp_socket_set_ttl (GNet.UdpSocket socket, int ttl);
	[CCode (cheader_filename = "gnet.h")]
	public static void udp_socket_unref (GNet.UdpSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static void unix_socket_delete (GNet.UnixSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GLib.IOChannel unix_socket_get_io_channel (GNet.UnixSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static weak string unix_socket_get_path (GNet.UnixSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.UnixSocket unix_socket_new (string path);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.UnixSocket unix_socket_new_abstract (string path);
	[CCode (cheader_filename = "gnet.h")]
	public static void unix_socket_ref (GNet.UnixSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.UnixSocket unix_socket_server_accept (GNet.UnixSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.UnixSocket unix_socket_server_accept_nonblock (GNet.UnixSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.UnixSocket unix_socket_server_new (string path);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.UnixSocket unix_socket_server_new_abstract (string path);
	[CCode (cheader_filename = "gnet.h")]
	public static void unix_socket_unref (GNet.UnixSocket socket);
	[CCode (cheader_filename = "gnet.h")]
	public static int unpack (string format, string buffer, int length);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.URI uri_clone (GNet.URI uri);
	[CCode (cheader_filename = "gnet.h")]
	public static void uri_delete (GNet.URI uri);
	[CCode (cheader_filename = "gnet.h")]
	public static bool uri_equal (pointer p1, pointer p2);
	[CCode (cheader_filename = "gnet.h")]
	public static void uri_escape (GNet.URI uri);
	[CCode (cheader_filename = "gnet.h")]
	public static weak string uri_get_string (GNet.URI uri);
	[CCode (cheader_filename = "gnet.h")]
	public static uint uri_hash (pointer p);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.URI uri_new (string uri);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.URI uri_new_fields (string scheme, string hostname, int port, string path);
	[CCode (cheader_filename = "gnet.h")]
	public static weak GNet.URI uri_new_fields_all (string scheme, string userinfo, string hostname, int port, string path, string query, string fragment);
	[CCode (cheader_filename = "gnet.h")]
	public static bool uri_parse_inplace (GNet.URI guri, string uri, string hostname, ulong len);
	[CCode (cheader_filename = "gnet.h")]
	public static void uri_set_fragment (GNet.URI uri, string fragment);
	[CCode (cheader_filename = "gnet.h")]
	public static void uri_set_hostname (GNet.URI uri, string hostname);
	[CCode (cheader_filename = "gnet.h")]
	public static void uri_set_path (GNet.URI uri, string path);
	[CCode (cheader_filename = "gnet.h")]
	public static void uri_set_port (GNet.URI uri, int port);
	[CCode (cheader_filename = "gnet.h")]
	public static void uri_set_query (GNet.URI uri, string query);
	[CCode (cheader_filename = "gnet.h")]
	public static void uri_set_scheme (GNet.URI uri, string scheme);
	[CCode (cheader_filename = "gnet.h")]
	public static void uri_set_userinfo (GNet.URI uri, string userinfo);
	[CCode (cheader_filename = "gnet.h")]
	public static void uri_unescape (GNet.URI uri);
	[CCode (cheader_filename = "gnet.h")]
	public static int vcalcsize (string format, pointer args);
	[CCode (cheader_filename = "gnet.h")]
	public static int vpack (string format, string buffer, int length, pointer args);
	[CCode (cheader_filename = "gnet.h")]
	public static int vunpack (string format, string buffer, int length, pointer args);
}
