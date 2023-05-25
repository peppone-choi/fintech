package com.zerobase.api.loan.review

import com.zerobase.domain.domain.LoanReview

interface LoanReviewService {
    fun loanReviewMain(userKey: String): LoanReviewDto.LoanReviewResponceDto

    fun getLoanResult(userKey: String): LoanReview?
}