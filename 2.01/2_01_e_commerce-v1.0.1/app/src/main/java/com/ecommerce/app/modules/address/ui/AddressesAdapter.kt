package com.ecommerce.app.modules.address.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.ecommerce.app.R
import com.ecommerce.app.databinding.RowAddressesBinding
import com.ecommerce.app.modules.address.`data`.model.AddressesRowModel
import kotlin.Int
import kotlin.collections.List

class AddressesAdapter(
  var list: List<AddressesRowModel>
) : RecyclerView.Adapter<AddressesAdapter.RowAddressesVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAddressesVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_addresses,parent,false)
    return RowAddressesVH(view)
  }

  override fun onBindViewHolder(holder: RowAddressesVH, position: Int) {
    val addressesRowModel = AddressesRowModel()
    // TODO uncomment following line after integration with data source
    // val addressesRowModel = list[position]
    holder.binding.addressesRowModel = addressesRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<AddressesRowModel>) {
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
      item: AddressesRowModel
    ) {
    }
  }

  inner class RowAddressesVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAddressesBinding = RowAddressesBinding.bind(itemView)
  }
}
