package checkers;

import io.dropwizard.Application;
import io.dropwizard.setup.Environment;

public class CheckersApplication extends Application<CheckersConfiguration>{

	public static void main(final String[] args) throws Exception {
		new CheckersApplication().run(args);
	}

	@Override
	public void run(final CheckersConfiguration configuration, final Environment environment) throws Exception {
		// TODO Auto-generated method stub

	}

}
