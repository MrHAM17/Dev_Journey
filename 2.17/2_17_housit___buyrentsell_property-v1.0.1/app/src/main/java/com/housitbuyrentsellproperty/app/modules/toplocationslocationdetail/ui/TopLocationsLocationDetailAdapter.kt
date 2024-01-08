package com.housitbuyrentsellproperty.app.modules.toplocationslocationdetail.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowToplocationslocationdetailBinding
import com.housitbuyrentsellproperty.app.modules.toplocationslocationdetail.`data`.model.ToplocationslocationdetailRowModel
import kotlin.Int
import kotlin.collections.List

class TopLocationsLocationDetailAdapter(
  var list: List<ToplocationslocationdetailRowModel>
) : RecyclerView.Adapter<TopLocationsLocationDetailAdapter.RowToplocationslocationdetailVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int):
      RowToplocationslocationdetailVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_toplocationslocationdetail,parent,false)
    return RowToplocationslocationdetailVH(view)
  }

  override fun onBindViewHolder(holder: RowToplocationslocationdetailVH, position: Int) {
    val toplocationslocationdetailRowModel = ToplocationslocationdetailRowModel()
    // TODO uncomment following line after integration with data source
    // val toplocationslocationdetailRowModel = list[position]
    holder.binding.toplocationslocationdetailRowModel = toplocationslocationdetailRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ToplocationslocationdetailRowModel>) {
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
      item: ToplocationslocationdetailRowModel
    ) {
    }
  }

  inner class RowToplocationslocationdetailVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowToplocationslocationdetailBinding =
        RowToplocationslocationdetailBinding.bind(itemView)
    init {
      binding.btnHouse.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, ToplocationslocationdetailRowModel())
      }
    }
  }
}
