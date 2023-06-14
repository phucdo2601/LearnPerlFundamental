package LearnMvcModelB01::Controller::ListItem;
use Mojo::Base 'Mojolicious::Controller', -signatures;

sub listPage ($self) {
    $self->render(msg => 'Welcome to my page!');
}

1;