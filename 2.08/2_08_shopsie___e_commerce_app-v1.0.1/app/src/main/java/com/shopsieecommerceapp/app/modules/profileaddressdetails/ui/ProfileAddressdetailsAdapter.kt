package com.shopsieecommerceapp.app.modules.profileaddressdetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.databinding.RowProfileaddressdetailsBinding
import com.shopsieecommerceapp.app.modules.profileaddressdetails.`data`.model.ProfileaddressdetailsRowModel
import kotlin.Int
import kotlin.collections.List

class ProfileAddressdetailsAdapter(
  var list: List<ProfileaddressdetailsRowModel>
) : RecyclerView.Adapter<ProfileAddressdetailsAdapter.RowProfileaddressdetailsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowProfileaddressdetailsVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_profileaddressdetails,parent,false)
    return RowProfileaddressdetailsVH(view)
  }

  override fun onBindViewHolder(holder: RowProfileaddressdetailsVH, position: Int) {
    val profileaddressdetailsRowModel = ProfileaddressdetailsRowModel()
    // TODO uncomment following line after integration with data source
    // val profileaddressdetailsRowModel = list[position]
    holder.binding.profileaddressdetailsRowModel = profileaddressdetailsRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ProfileaddressdetailsRowModel>) {
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
      item: ProfileaddressdetailsRowModel
    ) {
    }
  }

  inner class RowProfileaddressdetailsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowProfileaddressdetailsBinding = RowProfileaddressdetailsBinding.bind(itemView)
  }
}
