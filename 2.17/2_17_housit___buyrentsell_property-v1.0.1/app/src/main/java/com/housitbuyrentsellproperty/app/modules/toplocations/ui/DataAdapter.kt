package com.housitbuyrentsellproperty.app.modules.toplocations.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowDataBinding
import com.housitbuyrentsellproperty.app.modules.toplocations.`data`.model.DataRowModel
import kotlin.Int
import kotlin.collections.List

class DataAdapter(
  var list: List<DataRowModel>
) : RecyclerView.Adapter<DataAdapter.RowDataVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowDataVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_data,parent,false)
    return RowDataVH(view)
  }

  override fun onBindViewHolder(holder: RowDataVH, position: Int) {
    val dataRowModel = DataRowModel()
    // TODO uncomment following line after integration with data source
    // val dataRowModel = list[position]
    holder.binding.dataRowModel = dataRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<DataRowModel>) {
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
      item: DataRowModel
    ) {
    }
  }

  inner class RowDataVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowDataBinding = RowDataBinding.bind(itemView)
    init {
      binding.btnOne.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, DataRowModel())
      }
      binding.linearEstatesCardLocation.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, DataRowModel())
      }
    }
  }
}
