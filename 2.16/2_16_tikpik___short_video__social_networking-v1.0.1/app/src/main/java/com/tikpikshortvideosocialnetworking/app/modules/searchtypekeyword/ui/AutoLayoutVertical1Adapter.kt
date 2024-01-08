package com.tikpikshortvideosocialnetworking.app.modules.searchtypekeyword.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowAutolayoutvertical3Binding
import com.tikpikshortvideosocialnetworking.app.modules.searchtypekeyword.`data`.model.Autolayoutvertical3RowModel
import kotlin.Int
import kotlin.collections.List

class AutoLayoutVertical1Adapter(
  var list: List<Autolayoutvertical3RowModel>
) : RecyclerView.Adapter<AutoLayoutVertical1Adapter.RowAutolayoutvertical3VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAutolayoutvertical3VH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_autolayoutvertical3,parent,false)
    return RowAutolayoutvertical3VH(view)
  }

  override fun onBindViewHolder(holder: RowAutolayoutvertical3VH, position: Int) {
    val autolayoutvertical3RowModel = Autolayoutvertical3RowModel()
    // TODO uncomment following line after integration with data source
    // val autolayoutvertical3RowModel = list[position]
    holder.binding.autolayoutvertical3RowModel = autolayoutvertical3RowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Autolayoutvertical3RowModel>) {
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
      item: Autolayoutvertical3RowModel
    ) {
    }
  }

  inner class RowAutolayoutvertical3VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAutolayoutvertical3Binding = RowAutolayoutvertical3Binding.bind(itemView)
  }
}
