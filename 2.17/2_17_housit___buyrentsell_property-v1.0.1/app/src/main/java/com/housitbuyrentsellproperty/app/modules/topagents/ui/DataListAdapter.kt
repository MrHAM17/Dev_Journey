package com.housitbuyrentsellproperty.app.modules.topagents.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowDatalist1Binding
import com.housitbuyrentsellproperty.app.modules.topagents.`data`.model.Datalist1RowModel
import kotlin.Int
import kotlin.collections.List

class DataListAdapter(
  var list: List<Datalist1RowModel>
) : RecyclerView.Adapter<DataListAdapter.RowDatalist1VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowDatalist1VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_datalist1,parent,false)
    return RowDatalist1VH(view)
  }

  override fun onBindViewHolder(holder: RowDatalist1VH, position: Int) {
    val datalist1RowModel = Datalist1RowModel()
    // TODO uncomment following line after integration with data source
    // val datalist1RowModel = list[position]
    holder.binding.datalist1RowModel = datalist1RowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Datalist1RowModel>) {
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
      item: Datalist1RowModel
    ) {
    }
  }

  inner class RowDatalist1VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowDatalist1Binding = RowDatalist1Binding.bind(itemView)
    init {
      binding.btnOne.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Datalist1RowModel())
      }
      binding.linearEstatesCardUser.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Datalist1RowModel())
      }
    }
  }
}
