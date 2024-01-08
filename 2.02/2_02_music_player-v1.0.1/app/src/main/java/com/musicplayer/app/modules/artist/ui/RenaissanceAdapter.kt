package com.musicplayer.app.modules.artist.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.musicplayer.app.R
import com.musicplayer.app.databinding.RowRenaissanceBinding
import com.musicplayer.app.modules.artist.`data`.model.RenaissanceRowModel
import kotlin.Int
import kotlin.collections.List

class RenaissanceAdapter(
  var list: List<RenaissanceRowModel>
) : RecyclerView.Adapter<RenaissanceAdapter.RowRenaissanceVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowRenaissanceVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_renaissance,parent,false)
    return RowRenaissanceVH(view)
  }

  override fun onBindViewHolder(holder: RowRenaissanceVH, position: Int) {
    val renaissanceRowModel = RenaissanceRowModel()
    // TODO uncomment following line after integration with data source
    // val renaissanceRowModel = list[position]
    holder.binding.renaissanceRowModel = renaissanceRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<RenaissanceRowModel>) {
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
      item: RenaissanceRowModel
    ) {
    }
  }

  inner class RowRenaissanceVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowRenaissanceBinding = RowRenaissanceBinding.bind(itemView)
    init {
      binding.linearUrgentSiege.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, RenaissanceRowModel())
      }
    }
  }
}
