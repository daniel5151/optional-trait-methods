use super::super::target::{Target, TargetBaseOps};

pub struct BasicTarget {
    state: isize,
}

impl BasicTarget {
    pub fn new(state: isize) -> BasicTarget {
        BasicTarget { state }
    }
}

impl Target for BasicTarget {
    type Error = &'static str;

    #[inline(always)]
    fn base(&mut self) -> &'static TargetBaseOps<Self> {
        &BASE_OPS
    }
}

const BASE_OPS: TargetBaseOps<BasicTarget> = TargetBaseOps {
    get_state: |this| -> isize { this.state },

    set_state: |this, n: isize| -> Result<(), &'static str> {
        this.state = n;
        Ok(())
    },
};
