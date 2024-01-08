package com.banksydigitalbanking.app.modules.sendmoney.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.databinding.RowTwentytwoBinding
import com.banksydigitalbanking.app.modules.sendmoney.`data`.model.TwentytwoRowModel
import kotlin.Int
import kotlin.collections.List

class TwentyTwoAdapter(
  var list: List<TwentytwoRowModel>
) : RecyclerView.Adapter<TwentyTwoAdapter.RowTwentytwoVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTwentytwoVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_twentytwo,parent,false)
    return RowTwentytwoVH(view)
  }

  override fun onBindViewHolder(holder: RowTwentytwoVH, position: Int) {
    val twentytwoRowModel = TwentytwoRowModel()
    // TODO uncomment following line after integration with data source
    // val twentytwoRowModel = list[position]
    holder.binding.twentytwoRowModel = twentytwoRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<TwentytwoRowModel>) {
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
      item: TwentytwoRowModel
    ) {
    }
  }

  inner class RowTwentytwoVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTwentytwoBinding = RowTwentytwoBinding.bind(itemView)
  }
}
