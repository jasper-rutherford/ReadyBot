export class SpotifyClient {
  private refreshToken: string;

  constructor() {
    this.refreshToken = "";
  }

  public setRefreshToken(refreshToken: string) {
    this.refreshToken = refreshToken;
  }

  public getRefreshToken(): string {
    return this.refreshToken;
  }

  // public ensureAccessToken(): Promise<string | null> {
  //     // todo
  //     return null
  // // send test request, return client if successful
  // }
}
