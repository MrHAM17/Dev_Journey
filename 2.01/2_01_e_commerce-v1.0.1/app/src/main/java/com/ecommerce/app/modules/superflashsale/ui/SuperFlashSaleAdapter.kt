package com.ecommerce.app.modules.superflashsale.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.ecommerce.app.R
import com.ecommerce.app.databinding.RowSuperflashsaleBinding
import com.ecommerce.app.modules.superflashsale.`data`.model.SuperflashsaleRowModel
import kotlin.Int
import kotlin.collections.List

class SuperFlashSaleAdapter(
  var list: List<SuperflashsaleRowModel>
) : RecyclerView.Adapter<SuperFlashSaleAdapter.RowSuperflashsaleVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSuperflashsaleVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_superflashsale,parent,false)
    return RowSuperflashsaleVH(view)
  }

  override fun onBindViewHolder(holder: RowSuperflashsaleVH, position: Int) {
    val superflashsaleRowModel = SuperflashsaleRowModel()
    // TODO uncomment following line after integration with data source
    // val superflashsaleRowModel = list[position]
    holder.binding.superflashsaleRowModel = superflashsaleRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SuperflashsaleRowModel>) {
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
      item: SuperflashsaleRowModel
    ) {
    }
  }

  inner class RowSuperflashsaleVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSuperflashsaleBinding = RowSuperflashsaleBinding.bind(itemView)
  }
}
