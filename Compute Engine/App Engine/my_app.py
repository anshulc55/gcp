import webapp2


class LandingPage(webapp2.RequestHandler):
    def get(self):
        self.response.headers['Content-Type'] = 'text/html'
        self.response.write(
            '<h2>Hello Team,</h3><br/><h4>This is our First App Deployment</h4>')


app = webapp2.WSGIApplication([('/', LandingPage), ], debug=True)
