package com.firstbankdigitalbanking.app.modules.home.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.databinding.RowLiviabatorBinding
import com.firstbankdigitalbanking.app.modules.home.`data`.model.LiviabatorRowModel
import kotlin.Int
import kotlin.collections.List

class LiviaBatorAdapter(
  var list: List<LiviabatorRowModel>
) : RecyclerView.Adapter<LiviaBatorAdapter.RowLiviabatorVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowLiviabatorVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_liviabator,parent,false)
    return RowLiviabatorVH(view)
  }

  override fun onBindViewHolder(holder: RowLiviabatorVH, position: Int) {
    val liviabatorRowModel = LiviabatorRowModel()
    // TODO uncomment following line after integration with data source
    // val liviabatorRowModel = list[position]
    holder.binding.liviabatorRowModel = liviabatorRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<LiviabatorRowModel>) {
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
      item: LiviabatorRowModel
    ) {
    }
  }

  inner class RowLiviabatorVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowLiviabatorBinding = RowLiviabatorBinding.bind(itemView)
  }
}
