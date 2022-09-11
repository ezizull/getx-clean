enum Request { get, post, delete, put, patch }

extension RequestString on Request {
  String get string {
    switch (this) {
      case Request.get:
        return "get";
      case Request.post:
        return "post";
      case Request.delete:
        return "delete";
      case Request.patch:
        return "patch";
      case Request.put:
        return "put";
    }
  }
}

// API Request
class APIRequest {
  String url;
  Request method;
  Map<String, String>? headers;
  Map<String, String>? query;
  dynamic body;

  APIRequest({
    required this.url,
    required this.method,
    this.headers,
    this.query,
    required this.body,
  });
}
