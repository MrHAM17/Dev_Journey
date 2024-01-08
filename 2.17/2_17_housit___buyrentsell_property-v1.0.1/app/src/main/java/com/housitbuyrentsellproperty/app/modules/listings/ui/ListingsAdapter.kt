package com.housitbuyrentsellproperty.app.modules.listings.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowListingsBinding
import com.housitbuyrentsellproperty.app.modules.listings.`data`.model.ListingsRowModel
import kotlin.Int
import kotlin.collections.List

class ListingsAdapter(
  var list: List<ListingsRowModel>
) : RecyclerView.Adapter<ListingsAdapter.RowListingsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowListingsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_listings,parent,false)
    return RowListingsVH(view)
  }

  override fun onBindViewHolder(holder: RowListingsVH, position: Int) {
    val listingsRowModel = ListingsRowModel()
    // TODO uncomment following line after integration with data source
    // val listingsRowModel = list[position]
    holder.binding.listingsRowModel = listingsRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ListingsRowModel>) {
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
      item: ListingsRowModel
    ) {
    }
  }

  inner class RowListingsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowListingsBinding = RowListingsBinding.bind(itemView)
  }
}
