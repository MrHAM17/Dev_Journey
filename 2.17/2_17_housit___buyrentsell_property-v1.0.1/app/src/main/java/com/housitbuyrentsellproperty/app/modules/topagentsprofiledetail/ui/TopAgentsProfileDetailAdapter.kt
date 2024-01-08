package com.housitbuyrentsellproperty.app.modules.topagentsprofiledetail.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowTopagentsprofiledetailBinding
import com.housitbuyrentsellproperty.app.modules.topagentsprofiledetail.`data`.model.TopagentsprofiledetailRowModel
import kotlin.Int
import kotlin.collections.List

class TopAgentsProfileDetailAdapter(
  var list: List<TopagentsprofiledetailRowModel>
) : RecyclerView.Adapter<TopAgentsProfileDetailAdapter.RowTopagentsprofiledetailVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTopagentsprofiledetailVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_topagentsprofiledetail,parent,false)
    return RowTopagentsprofiledetailVH(view)
  }

  override fun onBindViewHolder(holder: RowTopagentsprofiledetailVH, position: Int) {
    val topagentsprofiledetailRowModel = TopagentsprofiledetailRowModel()
    // TODO uncomment following line after integration with data source
    // val topagentsprofiledetailRowModel = list[position]
    holder.binding.topagentsprofiledetailRowModel = topagentsprofiledetailRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<TopagentsprofiledetailRowModel>) {
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
      item: TopagentsprofiledetailRowModel
    ) {
    }
  }

  inner class RowTopagentsprofiledetailVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTopagentsprofiledetailBinding = RowTopagentsprofiledetailBinding.bind(itemView)
  }
}
