package com.housitbuyrentsellproperty.app.modules.reviews.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowLayout8Binding
import com.housitbuyrentsellproperty.app.modules.reviews.`data`.model.Layout8RowModel
import kotlin.Int
import kotlin.collections.List

class LayoutAdapter(
  var list: List<Layout8RowModel>
) : RecyclerView.Adapter<LayoutAdapter.RowLayout8VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowLayout8VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_layout8,parent,false)
    return RowLayout8VH(view)
  }

  override fun onBindViewHolder(holder: RowLayout8VH, position: Int) {
    val layout8RowModel = Layout8RowModel()
    // TODO uncomment following line after integration with data source
    // val layout8RowModel = list[position]
    holder.binding.layout8RowModel = layout8RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Layout8RowModel>) {
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
      item: Layout8RowModel
    ) {
    }
  }

  inner class RowLayout8VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowLayout8Binding = RowLayout8Binding.bind(itemView)
  }
}
