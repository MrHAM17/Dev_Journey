package com.tikpikshortvideosocialnetworking.app.modules.profile.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowAutolayoutvertical1Binding
import com.tikpikshortvideosocialnetworking.app.modules.profile.`data`.model.Autolayoutvertical1RowModel
import kotlin.Int
import kotlin.collections.List

class AutoLayoutVerticalAdapter(
  var list: List<Autolayoutvertical1RowModel>
) : RecyclerView.Adapter<AutoLayoutVerticalAdapter.RowAutolayoutvertical1VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAutolayoutvertical1VH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_autolayoutvertical1,parent,false)
    return RowAutolayoutvertical1VH(view)
  }

  override fun onBindViewHolder(holder: RowAutolayoutvertical1VH, position: Int) {
    val autolayoutvertical1RowModel = Autolayoutvertical1RowModel()
    // TODO uncomment following line after integration with data source
    // val autolayoutvertical1RowModel = list[position]
    holder.binding.autolayoutvertical1RowModel = autolayoutvertical1RowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Autolayoutvertical1RowModel>) {
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
      item: Autolayoutvertical1RowModel
    ) {
    }
  }

  inner class RowAutolayoutvertical1VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAutolayoutvertical1Binding = RowAutolayoutvertical1Binding.bind(itemView)
  }
}
