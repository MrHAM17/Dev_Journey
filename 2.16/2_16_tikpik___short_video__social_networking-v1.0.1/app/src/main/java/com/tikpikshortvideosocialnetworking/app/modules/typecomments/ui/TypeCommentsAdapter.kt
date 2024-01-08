package com.tikpikshortvideosocialnetworking.app.modules.typecomments.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowTypecommentsBinding
import com.tikpikshortvideosocialnetworking.app.modules.typecomments.`data`.model.TypecommentsRowModel
import kotlin.Int
import kotlin.collections.List

class TypeCommentsAdapter(
  var list: List<TypecommentsRowModel>
) : RecyclerView.Adapter<TypeCommentsAdapter.RowTypecommentsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTypecommentsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_typecomments,parent,false)
    return RowTypecommentsVH(view)
  }

  override fun onBindViewHolder(holder: RowTypecommentsVH, position: Int) {
    val typecommentsRowModel = TypecommentsRowModel()
    // TODO uncomment following line after integration with data source
    // val typecommentsRowModel = list[position]
    holder.binding.typecommentsRowModel = typecommentsRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<TypecommentsRowModel>) {
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
      item: TypecommentsRowModel
    ) {
    }
  }

  inner class RowTypecommentsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTypecommentsBinding = RowTypecommentsBinding.bind(itemView)
  }
}
