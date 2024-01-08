package com.banksydigitalbanking.app.modules.sendmoney.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.databinding.RowNineteenBinding
import com.banksydigitalbanking.app.modules.sendmoney.`data`.model.NineteenRowModel
import kotlin.Int
import kotlin.collections.List

class NineteenAdapter(
  var list: List<NineteenRowModel>
) : RecyclerView.Adapter<NineteenAdapter.RowNineteenVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowNineteenVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_nineteen,parent,false)
    return RowNineteenVH(view)
  }

  override fun onBindViewHolder(holder: RowNineteenVH, position: Int) {
    val nineteenRowModel = NineteenRowModel()
    // TODO uncomment following line after integration with data source
    // val nineteenRowModel = list[position]
    holder.binding.nineteenRowModel = nineteenRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<NineteenRowModel>) {
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
      item: NineteenRowModel
    ) {
    }
  }

  inner class RowNineteenVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowNineteenBinding = RowNineteenBinding.bind(itemView)
    init {
      binding.linearAngelinaDruff.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, NineteenRowModel())
      }
    }
  }
}
