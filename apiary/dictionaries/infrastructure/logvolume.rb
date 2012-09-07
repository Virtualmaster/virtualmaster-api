module Dictionaries
  module Logvolume
    def self.not_saved
      {
        name: 'test-dom-tld_root',
        size: 10,
        fstype: 'ext3',
        label: 'root',
        target: 'xvda',
        state: 'ready',
        snapshot_of_id: 1,
        drbd_id: 1,
        migration_id: 1,
        meta_for_drbd_id: 1,
        comment: 'Do not run fsck!',
        instance_id: 1,
        volgroup_id: 1,
      }
    end
  end
end