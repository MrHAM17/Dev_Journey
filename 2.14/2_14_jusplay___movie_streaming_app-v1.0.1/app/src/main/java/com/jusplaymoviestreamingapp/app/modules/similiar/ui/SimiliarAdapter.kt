package com.jusplaymoviestreamingapp.app.modules.similiar.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.databinding.RowSimiliarBinding
import com.jusplaymoviestreamingapp.app.modules.similiar.`data`.model.SimiliarRowModel
import kotlin.Int
import kotlin.collections.List

class SimiliarAdapter(
  var list: List<SimiliarRowModel>
) : RecyclerView.Adapter<SimiliarAdapter.RowSimiliarVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSimiliarVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_similiar,parent,false)
    return RowSimiliarVH(view)
  }

  override fun onBindViewHolder(holder: RowSimiliarVH, position: Int) {
    val similiarRowModel = SimiliarRowModel()
    // TODO uncomment following line after integration with data source
    // val similiarRowModel = list[position]
    holder.binding.similiarRowModel = similiarRowModel
  }

  override fun getItemCount(): Int = 10
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SimiliarRowModel>) {
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
      item: SimiliarRowModel
    ) {
    }
  }

  inner class RowSimiliarVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSimiliarBinding = RowSimiliarBinding.bind(itemView)
  }
}
