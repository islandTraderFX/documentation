signin('theengineear', 'o9zlr0hy6z')

trace1 = struct(...
  'x', { {'giraffes', 'orangutans', 'monkeys'} }, ...
  'y', [20, 14, 23], ...
  'name', 'SF Zoo', ...
  'type', 'bar');
trace2 = struct(...
  'x', { {'giraffes', 'orangutans', 'monkeys'} }, ...
  'y', [12, 18, 29], ...
  'name', 'LA Zoo', ...
  'type', 'bar');
data = {trace1, trace2};
layout = struct(...
    'xaxis', struct('type', 'category'), ...
    'categories', { {'giraffes', 'orangutans', 'monkeys'} }, ...
    'barmode', 'stack');

response = plotly(data, struct('layout', layout, 'filename', 'stacked-bar', 'fileopt', 'overwrite', 'auto_open', 'false'));
plot_url = response.url