package com.firstbankdigitalbanking.app.modules.investments.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.databinding.RowApplestoreBinding
import com.firstbankdigitalbanking.app.modules.investments.`data`.model.ApplestoreRowModel
import kotlin.Int
import kotlin.collections.List

class AppleStoreAdapter(
  var list: List<ApplestoreRowModel>
) : RecyclerView.Adapter<AppleStoreAdapter.RowApplestoreVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowApplestoreVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_applestore,parent,false)
    return RowApplestoreVH(view)
  }

  override fun onBindViewHolder(holder: RowApplestoreVH, position: Int) {
    val applestoreRowModel = ApplestoreRowModel()
    // TODO uncomment following line after integration with data source
    // val applestoreRowModel = list[position]
    holder.binding.applestoreRowModel = applestoreRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ApplestoreRowModel>) {
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
      item: ApplestoreRowModel
    ) {
    }
  }

  inner class RowApplestoreVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowApplestoreBinding = RowApplestoreBinding.bind(itemView)
  }
}
