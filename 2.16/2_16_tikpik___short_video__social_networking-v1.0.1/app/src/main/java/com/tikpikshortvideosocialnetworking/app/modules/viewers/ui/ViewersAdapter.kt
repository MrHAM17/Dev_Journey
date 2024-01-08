package com.tikpikshortvideosocialnetworking.app.modules.viewers.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowViewersBinding
import com.tikpikshortvideosocialnetworking.app.modules.viewers.`data`.model.ViewersRowModel
import kotlin.Int
import kotlin.collections.List

class ViewersAdapter(
  var list: List<ViewersRowModel>
) : RecyclerView.Adapter<ViewersAdapter.RowViewersVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowViewersVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_viewers,parent,false)
    return RowViewersVH(view)
  }

  override fun onBindViewHolder(holder: RowViewersVH, position: Int) {
    val viewersRowModel = ViewersRowModel()
    // TODO uncomment following line after integration with data source
    // val viewersRowModel = list[position]
    holder.binding.viewersRowModel = viewersRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ViewersRowModel>) {
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
      item: ViewersRowModel
    ) {
    }
  }

  inner class RowViewersVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowViewersBinding = RowViewersBinding.bind(itemView)
    init {
      binding.btnFollow.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, ViewersRowModel())
      }
    }
  }
}
