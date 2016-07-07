package checkers;

import checkers.ping.PingResource;
import io.dropwizard.Application;
import io.dropwizard.setup.Environment;

public class CheckersApplication extends Application<CheckersConfiguration>{

	public static void main(final String[] args) throws Exception {
		new CheckersApplication().run(args);
	}

	@Override
	public void run(final CheckersConfiguration configuration, final Environment environment) throws Exception {
		environment.jersey().register(new PingResource());
	}

}
