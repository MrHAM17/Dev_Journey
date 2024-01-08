package com.streetstyleecommerceapp.app.modules.shop.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.databinding.RowShopBinding
import com.streetstyleecommerceapp.app.modules.shop.`data`.model.ShopRowModel
import kotlin.Int
import kotlin.collections.List

class ShopAdapter(
  var list: List<ShopRowModel>
) : RecyclerView.Adapter<ShopAdapter.RowShopVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowShopVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_shop,parent,false)
    return RowShopVH(view)
  }

  override fun onBindViewHolder(holder: RowShopVH, position: Int) {
    val shopRowModel = ShopRowModel()
    // TODO uncomment following line after integration with data source
    // val shopRowModel = list[position]
    holder.binding.shopRowModel = shopRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ShopRowModel>) {
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
      item: ShopRowModel
    ) {
    }
  }

  inner class RowShopVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowShopBinding = RowShopBinding.bind(itemView)
  }
}
