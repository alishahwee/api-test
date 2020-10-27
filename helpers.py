class Coordinates:
    """A coordinates object."""

    def __init__(self, latlon: str):
        """Initialized by taking in a comma-separated latitude, longitude string (no whitespace)."""

        self.latlon_as_list = [float(c) for c in latlon.split(",")]
        self.latlon_as_str = latlon
        self.lat = self.latlon_as_list[0]
        self.lon = self.latlon_as_list[1]
