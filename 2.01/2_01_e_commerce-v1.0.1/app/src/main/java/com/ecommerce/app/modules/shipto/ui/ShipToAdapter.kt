package com.ecommerce.app.modules.shipto.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.ecommerce.app.R
import com.ecommerce.app.databinding.RowShiptoBinding
import com.ecommerce.app.modules.shipto.`data`.model.ShiptoRowModel
import kotlin.Int
import kotlin.collections.List

class ShipToAdapter(
  var list: List<ShiptoRowModel>
) : RecyclerView.Adapter<ShipToAdapter.RowShiptoVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowShiptoVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_shipto,parent,false)
    return RowShiptoVH(view)
  }

  override fun onBindViewHolder(holder: RowShiptoVH, position: Int) {
    val shiptoRowModel = ShiptoRowModel()
    // TODO uncomment following line after integration with data source
    // val shiptoRowModel = list[position]
    holder.binding.shiptoRowModel = shiptoRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ShiptoRowModel>) {
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
      item: ShiptoRowModel
    ) {
    }
  }

  inner class RowShiptoVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowShiptoBinding = RowShiptoBinding.bind(itemView)
  }
}
