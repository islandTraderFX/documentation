signin('theengineear', 'o9zlr0hy6z')

x = randn(500,1);
data = {...
  struct(...
    'x', x, ...
    'type', 'histogram')...
};

response = plotly(data, struct('filename', 'basic-histogram', 'fileopt', 'overwrite', 'auto_open', 'false'));
plot_url = response.url