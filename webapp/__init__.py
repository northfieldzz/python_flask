from flask import Flask


def create_app():
    app = Flask(__name__)

    from webapp.v1 import v1_bp

    app.register_blueprint(v1_bp, url_prefix="/v1")

    @app.route('/version')
    def version():
        return '0.0.0'

    return app
