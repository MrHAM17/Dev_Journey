package com.ecommerce.app.modules.reviewproduct.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.ecommerce.app.R
import com.ecommerce.app.databinding.RowReviewproductBinding
import com.ecommerce.app.modules.reviewproduct.`data`.model.ReviewproductRowModel
import kotlin.Int
import kotlin.collections.List

class ReviewProductAdapter(
  var list: List<ReviewproductRowModel>
) : RecyclerView.Adapter<ReviewProductAdapter.RowReviewproductVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowReviewproductVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_reviewproduct,parent,false)
    return RowReviewproductVH(view)
  }

  override fun onBindViewHolder(holder: RowReviewproductVH, position: Int) {
    val reviewproductRowModel = ReviewproductRowModel()
    // TODO uncomment following line after integration with data source
    // val reviewproductRowModel = list[position]
    holder.binding.reviewproductRowModel = reviewproductRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ReviewproductRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: ReviewproductRowModel
    ) {
    }
  }

  inner class RowReviewproductVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowReviewproductBinding = RowReviewproductBinding.bind(itemView)
  }
}
