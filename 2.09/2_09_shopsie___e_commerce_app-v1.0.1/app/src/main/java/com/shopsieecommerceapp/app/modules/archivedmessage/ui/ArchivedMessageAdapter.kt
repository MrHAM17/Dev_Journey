package com.shopsieecommerceapp.app.modules.archivedmessage.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.databinding.RowArchivedmessageBinding
import com.shopsieecommerceapp.app.modules.archivedmessage.`data`.model.ArchivedmessageRowModel
import kotlin.Int
import kotlin.collections.List

class ArchivedMessageAdapter(
  var list: List<ArchivedmessageRowModel>
) : RecyclerView.Adapter<ArchivedMessageAdapter.RowArchivedmessageVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowArchivedmessageVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_archivedmessage,parent,false)
    return RowArchivedmessageVH(view)
  }

  override fun onBindViewHolder(holder: RowArchivedmessageVH, position: Int) {
    val archivedmessageRowModel = ArchivedmessageRowModel()
    // TODO uncomment following line after integration with data source
    // val archivedmessageRowModel = list[position]
    holder.binding.archivedmessageRowModel = archivedmessageRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ArchivedmessageRowModel>) {
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
      item: ArchivedmessageRowModel
    ) {
    }
  }

  inner class RowArchivedmessageVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowArchivedmessageBinding = RowArchivedmessageBinding.bind(itemView)
    init {
      binding.linearMessage.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, ArchivedmessageRowModel())
      }
    }
  }
}
