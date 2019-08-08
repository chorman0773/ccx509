local prime  = {};

local bigint = require"bigint.bigint";

local big1 = bigint.new(1);
local big0 = bigint.new(0);

local function gcf(a,b)
  if(a==big1 or b==big1)then
    return big1;
  elseif a%b == big0 then
    return b;
  elseif b%a == big0 then
    return a;
  else
    return gcf(b,a%b);
  end
end

local function isCoprime(a,b)
  return gcf(a,b)==big1;
end


return prime;
