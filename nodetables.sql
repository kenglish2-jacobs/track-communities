use ${hiveconf:database};
insert into table ${hiveconf:table}_good_nodes partition (level='${hiveconf:level}') select comm_${hiveconf:last_level}, comm_${hiveconf:level}, count(node) from ${hiveconf:table}_nodes_comms_${hiveconf:level} group by comm_${hiveconf:last_level}, comm_${hiveconf:level};
