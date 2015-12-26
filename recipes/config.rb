execute 'install jupyter' do
    command '/opt/anaconda/2.3.0/bin/conda install jupyter -y'
end

directory '/home/vagrant/.jupyter/'

template '/home/vagrant/.jupyter/jupyter_notebook_config.py' do
    source 'jupyter_notebook_config.py.erb'
end
