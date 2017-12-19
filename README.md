# TAKE ME TO THE HAMZONE!

On December 18, 2018, I passed the FCC's Technician License exam for Amateur (or "Ham") Radio.
This means I'll soon be granted a callsign by the FCC, and I'll be allowed to transmit on certain reserved frequencies as soon as that callsign is listed in the [FCC's publicly searchable database](http://wireless2.fcc.gov/UlsApp/UlsSearch/searchLicense.jsp).

This process is expected to take a week, but could potentially be delayed by the upcoming holidays.  Even if it isn't, I have no aspiration to spend the next few days constantly refreshing the FCC's website, so enter: HAMZONE.

This little bit of code will regularly check the [FCC's License View API](https://www.fcc.gov/general/license-view-api) on my behalf, and alert me via Slack when my FRN (FCC Registration Number) eventually has a license associated with it.

If you find this handy, feel free to use it to track your own license propogation.  If you're not able to run this code yourself, I cannot help you at this time, but please let me know by [filing an Issue on this repo](https://github.com/mattgillooly/hamzone/issues).  If there is sufficient interest, I'll consider turning this into a web-app that anyone could use from their browser.
