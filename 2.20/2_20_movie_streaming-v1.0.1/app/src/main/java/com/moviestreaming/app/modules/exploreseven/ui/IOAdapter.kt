package com.moviestreaming.app.modules.exploreseven.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowIoBinding
import com.moviestreaming.app.modules.exploreseven.`data`.model.IoRowModel
import kotlin.Int
import kotlin.collections.List

class IOAdapter(
  var list: List<IoRowModel>
) : RecyclerView.Adapter<IOAdapter.RowIoVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowIoVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_io,parent,false)
    return RowIoVH(view)
  }

  override fun onBindViewHolder(holder: RowIoVH, position: Int) {
    val ioRowModel = IoRowModel()
    // TODO uncomment following line after integration with data source
    // val ioRowModel = list[position]
    holder.binding.ioRowModel = ioRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<IoRowModel>) {
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
      item: IoRowModel
    ) {
    }
  }

  inner class RowIoVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowIoBinding = RowIoBinding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, IoRowModel())
      }
    }
  }
}
