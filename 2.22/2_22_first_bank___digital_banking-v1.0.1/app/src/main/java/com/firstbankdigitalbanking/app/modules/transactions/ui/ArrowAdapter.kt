package com.firstbankdigitalbanking.app.modules.transactions.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.databinding.RowArrowBinding
import com.firstbankdigitalbanking.app.modules.transactions.`data`.model.ArRowModel
import kotlin.Int
import kotlin.collections.List

class ArrowAdapter(
  var list: List<ArRowModel>
) : RecyclerView.Adapter<ArrowAdapter.RowArrowVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowArrowVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_arrow,parent,false)
    return RowArrowVH(view)
  }

  override fun onBindViewHolder(holder: RowArrowVH, position: Int) {
    val arRowModel = ArRowModel()
    // TODO uncomment following line after integration with data source
    // val arRowModel = list[position]
    holder.binding.arRowModel = arRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ArRowModel>) {
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
      item: ArRowModel
    ) {
    }
  }

  inner class RowArrowVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowArrowBinding = RowArrowBinding.bind(itemView)
  }
}
