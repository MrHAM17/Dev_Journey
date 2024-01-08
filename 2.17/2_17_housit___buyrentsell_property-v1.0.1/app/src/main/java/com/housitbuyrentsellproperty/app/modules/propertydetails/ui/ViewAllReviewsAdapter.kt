package com.housitbuyrentsellproperty.app.modules.propertydetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowViewallreviewsBinding
import com.housitbuyrentsellproperty.app.modules.propertydetails.`data`.model.ViewallreviewsRowModel
import kotlin.Int
import kotlin.collections.List

class ViewAllReviewsAdapter(
  var list: List<ViewallreviewsRowModel>
) : RecyclerView.Adapter<ViewAllReviewsAdapter.RowViewallreviewsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowViewallreviewsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_viewallreviews,parent,false)
    return RowViewallreviewsVH(view)
  }

  override fun onBindViewHolder(holder: RowViewallreviewsVH, position: Int) {
    val viewallreviewsRowModel = ViewallreviewsRowModel()
    // TODO uncomment following line after integration with data source
    // val viewallreviewsRowModel = list[position]
    holder.binding.viewallreviewsRowModel = viewallreviewsRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ViewallreviewsRowModel>) {
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
      item: ViewallreviewsRowModel
    ) {
    }
  }

  inner class RowViewallreviewsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowViewallreviewsBinding = RowViewallreviewsBinding.bind(itemView)
  }
}
