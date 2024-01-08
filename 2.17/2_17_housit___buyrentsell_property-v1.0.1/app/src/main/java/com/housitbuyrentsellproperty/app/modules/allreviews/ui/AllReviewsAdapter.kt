package com.housitbuyrentsellproperty.app.modules.allreviews.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowAllreviewsBinding
import com.housitbuyrentsellproperty.app.modules.allreviews.`data`.model.AllreviewsRowModel
import kotlin.Int
import kotlin.collections.List

class AllReviewsAdapter(
  var list: List<AllreviewsRowModel>
) : RecyclerView.Adapter<AllReviewsAdapter.RowAllreviewsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAllreviewsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_allreviews,parent,false)
    return RowAllreviewsVH(view)
  }

  override fun onBindViewHolder(holder: RowAllreviewsVH, position: Int) {
    val allreviewsRowModel = AllreviewsRowModel()
    // TODO uncomment following line after integration with data source
    // val allreviewsRowModel = list[position]
    holder.binding.allreviewsRowModel = allreviewsRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<AllreviewsRowModel>) {
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
      item: AllreviewsRowModel
    ) {
    }
  }

  inner class RowAllreviewsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAllreviewsBinding = RowAllreviewsBinding.bind(itemView)
  }
}
