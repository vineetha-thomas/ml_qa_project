import json_lines
import pickle

f1 = open('test.source', 'w')
f2 = open('test.target', 'w')
f3 = open('gold_para_qa_data_test.tsv', 'w')

with open('mkqa.jsonl') as f:     
    for item in json_lines.reader(f):
        query = item['query']
        f1.write(query)
        f1.write('\n')
       
        ans = (item['answers']['en'][0]['text'])
        if ans is not None:
           f2.write(ans)
        f2.write('\n')

        f3.write(query)
        f3.write('\t')
        ans_list = []
        for element in item['answers']['en']:
            ans_list.append(element['text'])
            if 'aliases' in item:
                ans_list = ans_list + element['aliases']

        f3.write(str(ans_list))
        f3.write('\n')
        

f1.close()
f2.close()
f3.close()



