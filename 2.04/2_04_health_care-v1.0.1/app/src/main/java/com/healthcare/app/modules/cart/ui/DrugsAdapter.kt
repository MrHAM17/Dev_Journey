package com.healthcare.app.modules.cart.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.healthcare.app.R
import com.healthcare.app.databinding.RowDrugs2Binding
import com.healthcare.app.modules.cart.`data`.model.Drugs2RowModel
import kotlin.Int
import kotlin.collections.List

class DrugsAdapter(
  var list: List<Drugs2RowModel>
) : RecyclerView.Adapter<DrugsAdapter.RowDrugs2VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowDrugs2VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_drugs2,parent,false)
    return RowDrugs2VH(view)
  }

  override fun onBindViewHolder(holder: RowDrugs2VH, position: Int) {
    val drugs2RowModel = Drugs2RowModel()
    // TODO uncomment following line after integration with data source
    // val drugs2RowModel = list[position]
    holder.binding.drugs2RowModel = drugs2RowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Drugs2RowModel>) {
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
      item: Drugs2RowModel
    ) {
    }
  }

  inner class RowDrugs2VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowDrugs2Binding = RowDrugs2Binding.bind(itemView)
  }
}
