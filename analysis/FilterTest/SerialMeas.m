classdef SerialMeas
   properties
      vals
      normV
      normRel, normRelOffst
      minVal
      maxVal
      span
   end
   methods
      function obj = SerialMeas(csvTable, index)
        obj.vals         = csvTable(:,index);

        obj.normRelOffst = min(obj.vals);
        obj.normV        = obj.vals-obj.normRelOffst;
        obj.normRel      = max(obj.normV);
        obj.normV        = obj.normV/obj.normRel;


        obj.minVal       = min(obj.vals);
        obj.maxVal       = max(obj.vals);

        obj.span         = obj.maxVal-obj.minVal;
      end

      function originalVal = origVal(obj, value)
        originalVal = value*obj.normRel+obj.normRelOffst;
      end

   end
end