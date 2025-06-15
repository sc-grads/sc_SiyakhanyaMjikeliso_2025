import requests
from requests import Response

def get_response(url:str) -> Response:
    return requests.get(url)

def show_response_info(response: Response) -> None:
    print('Status: ', response.status_code)
    print('OK: ', response.ok)
    print('Links: ', response.encoding)
    print('Is redirect: ', response.is_redirect)
    print('Is permanent redirect: ', response.is_permanent_redirect)

def main() -> None:
     website: str = 'https://www.indently.io/abc'
     response: Response = get_response(website)
     show_response_info(response)

if __name__ == '__main__':
    main()
